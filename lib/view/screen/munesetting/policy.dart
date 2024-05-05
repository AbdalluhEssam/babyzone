import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';
import '../../../core/constant/imageassets.dart';


class PolicyReturn extends StatelessWidget {
  const PolicyReturn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColor.backgroundColor,
        foregroundColor: AppColor.primaryColor,
        centerTitle: true,
        title: Text("policyReturn".tr),
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
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
                    padding: const EdgeInsets.symmetric(
                        vertical: 30, horizontal: 15),
                    child: Text(
                      "returnpolicy".tr,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          fontSize: 13, color: AppColor.gray.withOpacity(0.8)),
                    )),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 3,
                  width: 300,
                  color: AppColor.primaryColor,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [Text("Glu's Family | ©2022")],
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
