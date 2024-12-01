import 'package:flutter/material.dart';
import 'package:siginfy/features/onboarding/data/models/Onboarding_info.dart';

class OnboardingItem {
  List<OnboardingInfo> getItem(BuildContext context) {
    return [
      OnboardingInfo(
        title: '  مرحبا بك  ',
         image: 'assets/images/onOne.png',
          ),
      OnboardingInfo(
        title: 'تعلم وتواصل باستخدام اشاراتك',
         image: 'assets/images/onTwo.png',
          ),
      OnboardingInfo(
        title: 'سجل الان واستمتع بتجربه فريده ',
         image: 'assets/images/onThree.png',
          )
      ];
  }
}
