import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_maps/config/text_style.dart';
import 'package:my_maps/core/utalis/app_color.dart';
import 'package:my_maps/core/utalis/app_strings.dart';
import 'package:my_maps/presentation/widgets/pine_code_textfield.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(18.0.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 44.h,
              ),
              Text(
                AppStrings.varifyYourNumber,
                textAlign: TextAlign.start,
                style: StylesText.textStyle24.copyWith(fontSize: 24.sp),
              ),
              SizedBox(
                height: 24.h,
              ),
              RichText(
                text: TextSpan(
                    text: AppStrings.enterYourCode,
                    style: StylesText.textStyle16
                        .copyWith(fontSize: 14.sp, height: 1.5.h),
                    children: <TextSpan>[
                      TextSpan(
                          text: "01125660461",
                          style: StylesText.textStyle16.copyWith(
                            color: Colors.blue,
                            fontSize: 14.sp,
                          )),
                    ]),
              ),
              SizedBox(
                height: 70.h,
              ),
              const CutomPineCodeTextField(),
              SizedBox(
                height: 54.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.w)),
                          backgroundColor: AppColor.black,
                          fixedSize: Size(114.w, 46.h)),
                      child: const Text("Verfy")),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
