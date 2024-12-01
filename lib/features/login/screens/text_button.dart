import 'package:flutter/material.dart';
import 'package:siginfy/core/theming/app_colors.dart';
import 'package:siginfy/core/theming/app_text_styles.dart';

class TextBottom extends StatelessWidget {
  const TextBottom({super.key, required this.firstText, required this.secondText, required this.onTap});
    final String firstText;
    final String secondText;
    final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: firstText,
                style: AppTextStyles.font16morelightgraymedium
                    .copyWith(color: Colors.grey),
              ),
              TextSpan(
                text: secondText,
                style: AppTextStyles.font16morelightgraymedium
                    .copyWith(color: black),
              ),
            ],
          ),
          textAlign: TextAlign.start,
        ),
      ),
    );
  }
}
