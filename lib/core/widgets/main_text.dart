import 'package:flutter/material.dart';

import '../theming/styles.dart';

class MainText extends StatelessWidget {
  const MainText({super.key});

  @override
  Widget build(BuildContext context) {
    return  Text(
      'كن عونًا',
      style: TextStyles.font36BlueBold,
    );
  }
}
