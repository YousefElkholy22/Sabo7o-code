import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:siginfy/core/helpers/app_navigotion.dart';
import 'package:siginfy/core/helpers/speacing.dart';
import 'package:siginfy/core/routing/route.dart';
import 'package:siginfy/core/theming/app_colors.dart';
import 'package:siginfy/core/theming/app_text_styles.dart';
import 'package:siginfy/features/login/screens/app_text.dart';
import 'package:siginfy/features/login/screens/app_text_button.dart';
import 'package:siginfy/features/login/screens/text_button.dart';
import 'package:siginfy/features/sign_in/sign_in.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String? email;
  String? password;
  final GlobalKey<FormState> formKey = GlobalKey();
  bool isObscureText = true;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        backgroundColor: white,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 22.sp, vertical: 22.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalSpace(40),
                  Center(
                    child: Text(
                      'Register Account',
                      style: AppTextStyles.font32BlackBold,
                    ),
                  ),
                  verticalSpace(12),
                  Center(
                    child: Text(
                      '''Fill your details or continue with
                      social media''',
                      style: AppTextStyles.font16lightgrayregular,
                    ),
                  ),
                  verticalSpace(30),
                  Form(
                    key: formKey,
                    child: Column(
                      children: [
                        AppTextFormField(
                          hintText: 'Your Name',
                          hintStyle: AppTextStyles.font14lightgraymedium,
                          backgroundColor: gray,
                        ),
                        verticalSpace(18),
                        AppTextFormField(
                          onChanged: (data) {
                            email = data;
                          },
                          hintText: 'Email Address',
                          hintStyle: AppTextStyles.font14lightgraymedium,
                          backgroundColor: gray,
                        ),
                        verticalSpace(18),
                        AppTextFormField(
                          onChanged: (data) {
                            password = data;
                          },
                          hintText: 'Password',
                          hintStyle: AppTextStyles.font14lightgraymedium,
                          backgroundColor: gray,
                          isObscureText: isObscureText,
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                isObscureText = !isObscureText;
                              });
                            },
                            child: Icon(
                              isObscureText
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                          ),
                        ),
                        verticalSpace(30),
                        AppTextButton(
                          onTap: () {
                            if (formKey.currentState!.validate()) {
                              setState(() {
                                isLoading = true;
                              });

                              // محاكاة عملية التسجيل
                              Future.delayed(const Duration(seconds: 2), () {
                                setState(() {
                                  isLoading = false;
                                });

                                // الانتقال إلى الصفحة الرئيسية
                                Navigator.of(context).pushReplacementNamed(Routes.homePage);
                              });
                            }
                          },
                          buttonText: 'Sign Up',
                          textStyle: AppTextStyles.font16WhiteRegular,
                        ),
                      ],
                    ),
                  ),
                  verticalSpace(200),
                  TextBottom(
                    firstText: 'Already Have Account?',
                    secondText: 'Log In',
                    onTap: () {
                      context.pushNamed(Routes.signInScreen);
                    },
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
