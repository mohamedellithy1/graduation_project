import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:graduation_project/core/helper/extensions.dart';
import 'package:graduation_project/core/helper/spacing.dart';
import 'package:graduation_project/core/routes/routes.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: InkWell(
        onTap: () {
          context.pushNamed(Routes.profile);
        },
        child: Row(
          children: [
            horizontalSpace(20),
            Container(
              height: 80.0,
              width: 80.0,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('asset/images/pro.png'),
                      fit: BoxFit.cover)),
            ),
            horizontalSpace(20),
            const Text(
              'Nada',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
