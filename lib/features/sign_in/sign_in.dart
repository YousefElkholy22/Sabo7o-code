import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:siginfy/core/helpers/speacing.dart';
import 'package:siginfy/core/routing/route.dart';
import 'package:siginfy/core/theming/app_colors.dart';
import 'package:siginfy/core/theming/app_text_styles.dart';
import 'package:siginfy/features/login/screens/app_text.dart';
import 'package:siginfy/features/login/screens/app_text_button.dart';
import 'package:siginfy/features/login/screens/text_button.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObscureText = true;
  String? email;
  String? password;
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
                      'Hello Again!',
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
                  verticalSpace(40),
                  Form(
                    key: formKey,
                    child: Column(
                      children: [
                        AppTextFormField(
                          hintText: 'Email',
                          onChanged: (data) {
                            email = data;
                          },
                          backgroundColor: gray,
                          hintStyle: AppTextStyles.font14lightgraymedium,
                        ),
                        verticalSpace(20),
                        AppTextFormField(
                          onChanged: (data) {
                            password = data;
                          },
                          hintText: 'Password',
                          backgroundColor: gray,
                          hintStyle: AppTextStyles.font14lightgraymedium,
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
                        verticalSpace(12),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: GestureDetector(
                            onTap: () {},
                            child: Text(
                              'Forgot password?',
                              style: AppTextStyles.font12morelightgraymedium,
                            ),
                          ),
                        ),
                        verticalSpace(20),
                        AppTextButton(
                          buttonText: 'Sign In',
                          textStyle: AppTextStyles.font16WhiteRegular,
                          onTap: () {
                            if (formKey.currentState!.validate()) {
                              setState(() {
                                isLoading = true;
                              });

                              // Simulate login process
                              Future.delayed(const Duration(seconds: 2), () {
                                setState(() {
                                  isLoading = false;
                                });

                                // Navigate to home page after login
                                Navigator.of(context).pushNamed(Routes.homePage);
                              });
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                  verticalSpace(260),
                  TextBottom(
                    firstText: 'New User?',
                    secondText: 'Create Account',
                    onTap: () {
                      Navigator.of(context).pushNamed(Routes.loginScreen);
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
