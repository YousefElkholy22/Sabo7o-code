// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:siginfy/core/routing/app_route.dart';
import 'package:siginfy/features/onboarding/screens/onboarding_screen.dart';

class SignifyApp  extends StatelessWidget {
  const SignifyApp ({super.key, required this.appRouter});
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Nike Sneker',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          onGenerateRoute: appRouter.generateRoute,
          home: child,
        );
      },
      child: const OnBoardingScreen(),
    );
  }
}
