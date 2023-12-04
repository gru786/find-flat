import 'package:findmyflat/constants/colors.dart';
import 'package:findmyflat/constants/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final phoneKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Welcome",
              style: kSubHeading3TextStyle,
            ),
            Text(
              "to",
              style: kSubHeading3TextStyle,
            ),
            Text(
              "FindMyFlat",
              style: kHeading2TextStyle,
            ),
            SizedBox(
              height: 30.h,
            ),
            Form(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              key: phoneKey,
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Can't be left empty";
                  } else {
                    return null;
                  }
                },
                autofocus: true,
                maxLines: 1,
                maxLength: 10,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(45.sp),
                    borderSide: const BorderSide(color: kPrimaryColor),
                  ),
                  hintText:
                      "Please enter your mobile number linked with WhatsApp",
                  hintStyle: kSmall2TextStyle,
                  prefixIcon: const Icon(
                    Icons.phone,
                    color: kPrimaryColor,
                  ),
                  labelText: "Mobile Number (WhatsApp)",
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 30.w, vertical: 18.h),
                  hintFadeDuration: const Duration(seconds: 2),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(45.sp),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(minimumSize: MaterialStatePropertyAll<Size>(Size(100.w, 40.h))),
              child: Text("Login", style: kHeading3TextStyle,),
            ),
          ],
        ),
      ),
    );
  }
}
