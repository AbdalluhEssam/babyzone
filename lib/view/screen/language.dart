import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/constant/color.dart';
import '../../core/localization/changelocal.dart';
import '../widget/language/custombuttonlang.dart';

class Language extends GetView<LocaleController> {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColor.backgroundColor,
          foregroundColor: AppColor.primaryColor,
          centerTitle: true,
          title: Text("language".tr),
        ),
        body: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "choose".tr,
                style: Theme.of(context).textTheme.displayLarge,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomButtonLang(
                textbutton: "Ar".tr,
                onPressed: () {
                  // controller.changeLang("ar");
                  Navigator.of(context).pop();
                },
              ),
              CustomButtonLang(
                textbutton: "En".tr,
                onPressed: () {
                  // controller.changeLang("en");
                  Navigator.of(context).pop();
                },
              )
            ],
          ),
        ));
  }
}
