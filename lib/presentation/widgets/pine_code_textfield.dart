import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CutomPineCodeTextField extends StatelessWidget {
  const CutomPineCodeTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      autoFocus: true,
      keyboardType: TextInputType.number,
      cursorColor: Colors.black,
      appContext: context,
      length: 6,
      obscureText: false,
      animationType: AnimationType.scale,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(5),
        fieldHeight: 52.h,
        fieldWidth: 45.w,
        activeColor: Colors.blue,
        activeFillColor: Colors.white,
        inactiveFillColor: Colors.black,
      ),
      animationDuration: const Duration(milliseconds: 300),
      backgroundColor: Colors.blue.shade50,
      enableActiveFill: false,
      onCompleted: (v) {
        if (kDebugMode) {
          //todoo
          print("Completed");
        }
      },
      onChanged: (value) {
        if (kDebugMode) {
          print(value);
        }
      },
    );
  }
}
