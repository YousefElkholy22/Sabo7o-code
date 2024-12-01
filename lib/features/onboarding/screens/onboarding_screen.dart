import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:siginfy/core/helpers/app_navigotion.dart';
import 'package:siginfy/core/helpers/speacing.dart';
import 'package:siginfy/core/routing/route.dart';
import 'package:siginfy/features/onboarding/data/models/Onboarding_info.dart';
import 'package:siginfy/features/onboarding/data/repo/Onboarding_item.dart';
import 'package:siginfy/features/onboarding/widget/Onboarding_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  OnBoardingScreenState createState() => OnBoardingScreenState();
}

class OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _pageController = PageController();
  bool _isLastPage = false;

  void _updateIsLastPage(int currentPage, int totalPages) {
    setState(() {
      _isLastPage = currentPage == totalPages - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final onboardingItems = OnboardingItem();
    final List<OnboardingInfo> items = onboardingItems.getItem(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              
              children: [
                Container(height: 80,),
                Expanded(
                  child: PageView.builder(
                    onPageChanged: (value) => _updateIsLastPage(value, items.length),
                    itemCount: items.length,
                    controller: _pageController,
                    itemBuilder: (context, index) {
                      final onboardingInfo = items[index];
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // عرض الصورة
                              Image.asset(
                                onboardingInfo.image, // المسار بتاع الصورة
                                height: 250.h, // حجم الصورة
                                width: 250.w,
                                fit: BoxFit.cover, // عرض الصورة بشكل جيد
                              ),
                              verticalSpace(20),
                              // عرض العنوان
                              Text(
                                onboardingInfo.title, // النص اللي هيتعرض
                                style: TextStyle(
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black, // لون النص أسود
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SmoothPageIndicator(
                    controller: _pageController,
                    count: items.length,
                    effect: const SlideEffect(
                      activeDotColor: Colors.blue, // لون النقاط النشطة
                      dotColor: Colors.grey, // لون النقاط الغير نشطة
                      dotHeight: 8.0,
                      dotWidth: 8.0,
                      spacing: 16.0,
                    ),
                  ),
                  verticalSpace(20),
                  Padding(
                    padding: EdgeInsets.all(20.h),
                    child: _buildNextButton(context),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNextButton(BuildContext context) {
    return _isLastPage
        ? OnBoardingeButton(
            titl: 'ابدأ',
            onPressed: () => context.pushNamed(Routes.loginScreen), // تغيير الصفحة بعد ما توصل للآخر
          )
        : OnBoardingeButton(
            onPressed: () => _pageController.nextPage(
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeIn,
            ),
            titl: 'التالي ',
          );
  }
}
