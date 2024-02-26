import 'package:flutter/material.dart';
import 'package:graduation_project/core/theming/styles.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});
  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By logging, you agree to our',
            style: TextStyles.font13GrayRegular,
          ), // TextSpan
          TextSpan(
            text: ' Term & Conditions',
            style: TextStyles.font13DarkBlueMedium,
          ), // TextSpan
          TextSpan(
            text: ' and',
            style: TextStyles.font13GrayRegular.copyWith(height: 1.5),
          ), // TextSpan
          TextSpan(
            text: ' Privacy Policy',
            style: TextStyles.font13DarkBlueMedium,
          ), // TextSpan
        ],
      ), // TextSpan
    ); // RichText
  }
}
