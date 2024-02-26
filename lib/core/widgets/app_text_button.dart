import 'package:flutter/material.dart';
import 'package:graduation_project/core/helper/extensions.dart';

import '../../../core/routes/routes.dart';
import '../../../core/theming/colors.dart';
import '../../../core/theming/styles.dart';

class AppTextButton extends StatelessWidget {
  final String pushNamed;
  final String text;
  const AppTextButton({super.key, required this.pushNamed, required this.text});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(ColorManager.mainBlue),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            maximumSize: MaterialStateProperty.all(const Size(double.infinity, 52)),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16)
            ))
        ),
        onPressed: (){
          context.pushNamed(pushNamed);
        },
        child:  Text(text,
          style: TextStyles.font24WhiteBold,
        )
    );
  }
}
