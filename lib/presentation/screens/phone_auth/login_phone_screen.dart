import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:my_maps/config/text_style.dart';
import 'package:my_maps/core/utalis/app_color.dart';
import 'package:my_maps/core/utalis/app_strings.dart';

class LoginScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(20.0.w),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 40.h,
                  ),
                  Text(
                    AppStrings.whatIsYourPhone,
                    style: StylesText.textStyle24.copyWith(),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    AppStrings.pleaseEnterYourPhone,
                    style: StylesText.textStyle16.copyWith(),
                  ),
                  SizedBox(
                    height: 80.h,
                  ),
                  InternationalPhoneNumberInput(
                    onInputChanged: (value) => 0,
                    cursorColor: AppColor.blu,

                    initialValue: PhoneNumber(
                        isoCode: 'EG', dialCode: '+20'), //+961 or 961
                    hintText: 'Phone Number',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "please enter phone number";
                      } else if (value.length > 11) {
                        return "please enter full number";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 110.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                          height: 50.h,
                          width: 114.w,
                          child:ElevatedButton(onPressed: (){
                            Navigator.pushNamed(context,AppStrings.otpRoute);

                          }, child: const Text("Next")),),
                    ],
                  ),
                  SizedBox(
                    height: 165.h,
                  ),
                  InkWell(
                    onTap: () => Navigator.pushReplacementNamed(
                        context, AppStrings.loginEmailRoute),
                    child: Text(
                      AppStrings.logiWithEmail,
                      textAlign: TextAlign.center,
                      style: StylesText.textStyle17.copyWith(
                          color: AppColor.black,
                          fontSize: 17.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
