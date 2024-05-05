import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';
import '../../../core/constant/imageassets.dart';
import '../../../core/functions/translatedordatabase.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text("about".tr),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Image.asset(
                AppImageAssets.onBoardingImageLogo,
                alignment: Alignment.center,
                fit: BoxFit.fill,
              ),
            ),
            Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
                child: Text(
                  translateDataBase(
                      "يبدو أن تطبيق Any Where يوفر حلاً مريحًا لإدارة المهام للأفراد والشركات على حد سواء. هل لديك معلومات إضافية حول كيفية عمل التطبيق أو الميزات التي يقدمها؟",
                      "Any Where appears to provide a convenient task management solution for individuals and businesses alike. Do you have additional information about how the app works or what features it offers?"),
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: AppColor.black.withOpacity(0.8)),
                )),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("Any Where | ©2024")],
            ),
          ],
        ),
      ),
    );
  }
}
