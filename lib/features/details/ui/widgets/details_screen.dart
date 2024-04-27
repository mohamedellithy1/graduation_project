import 'package:flutter/material.dart';
import 'package:graduation_project/core/helper/spacing.dart';
import 'package:graduation_project/core/theming/styles.dart';

class Detailscreen extends StatelessWidget {
  const Detailscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("التفاصيل"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('Lein Amin', style: TextStyles.font20Black700Weight),
              horizontalSpace(25),
              Container(
                height: 70.0,
                width: 70.0,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage("asset/images/pro.png"),
                        fit: BoxFit.cover)),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
