import 'package:flutter/material.dart%20';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SunMoonSwitch extends StatefulWidget {
  const SunMoonSwitch({super.key});

  @override
  _SunMoonSwitchState createState() => _SunMoonSwitchState();
}

class _SunMoonSwitchState extends State<SunMoonSwitch> {
  bool isSun = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSun = !isSun;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        width: 80.w,
        height: 40.h,
        padding: EdgeInsets.all(5.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: isSun ? Colors.yellow[100] : Colors.blue[100],
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: isSun ? Alignment.centerLeft : Alignment.centerRight,
              child: AnimatedSwitcher(
                duration: Duration(milliseconds: 300),
                transitionBuilder: (child, animation) =>
                    ScaleTransition(scale: animation, child: child),
                child: isSun
                    ? Icon(Icons.wb_sunny,
                        key: ValueKey('sun'), color: Colors.orange)
                    : Icon(Icons.nightlight_round,
                        key: ValueKey('moon'), color: Colors.blue),
              ),
            ),
            Align(
              alignment: isSun ? Alignment.centerRight : Alignment.centerLeft,
              child: Container(
                width: 30.r,
                height: 30.r,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isSun ? Colors.blue : Colors.yellow,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
