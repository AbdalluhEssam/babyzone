import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:babyzone/controller/home/homescreen_controller.dart';
import 'package:babyzone/core/constant/color.dart';
import 'package:babyzone/core/constant/icon_broken.dart';
import 'package:babyzone/core/localization/changelocal.dart';
import 'package:babyzone/likeapi.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher_string.dart';
import '../../../controller/home/settings_controller.dart';
import '../../../core/functions/translatedordatabase.dart';
import 'control/SettingScreenController.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SettingsController controller = Get.put(SettingsController());
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Setting"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      color: AppColor.primaryColor,
                      borderRadius: BorderRadius.circular(100)),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: AppColor.backgroundColor,
                    backgroundImage: CachedNetworkImageProvider(
                        "${AppLink.imageUsers}/${controller.myServices.sharedPreferences.getString("image")}"),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        "${controller.myServices.sharedPreferences.getString("username")}",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                    Text(
                        "${controller.myServices.sharedPreferences.getString("approveName")}",
                        style: const TextStyle(
                            height: 1,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 16)),
                  ],
                )
              ],
            ),
          ),
          Column(
            children: [
              const TypeOfSetting(
                nameTypeOfSetting: "General",
              ),
              SettingSwitchButton(
                iconSettingSwitchButton: const Icon(
                  Icons.notifications_outlined,

                  size: 26,
                ),
                nameSettingSwitchButton: "Push Notification",
                initialValue: false,
                onChanged: (value) {},
              ),
              SettingSwitchButton(
                iconSettingSwitchButton: const Icon(
                  Icons.dark_mode_outlined,

                  size: 25,
                ),
                nameSettingSwitchButton: "Dark Mood",
                initialValue: false,
                onChanged: (value) {
                  controller.changeTheme(value);
                },
              ),
              const TypeOfSetting(
                nameTypeOfSetting: "About Us",
              ),
              SettingButton(
                iconSettingButton: const Icon(
                  Icons.security_outlined,
                  size: 25,
                ),
                nameSettingButton: "Privacy Policy",
                onClickSettingButton: () {

                },
              ),
              SettingButton(
                iconSettingButton: const Icon(
                  Icons.handshake_outlined,
                  size: 25,
                ),
                nameSettingButton: "Terms Of Service",
                onClickSettingButton: () {},
              ),
              SettingButton(
                iconSettingButton: const Icon(
                  Icons.feedback_outlined,
                  size: 25,
                ),
                nameSettingButton: "Feedback",
                onClickSettingButton: () {},
              ),
              SettingButton(
                iconSettingButton: const Icon(
                  Icons.logout_outlined,
                  size: 25,
                ),
                nameSettingButton: "Log Out",
                onClickSettingButton: () {
                  controller.logout();
                },
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('BABY ZONE | ©2024'),
            ],
          ),
        ],
      ),
    );
  }
}

void whatsapp() async {
  const url = 'whatsapp://send?phone=+2001000615819';
  await launchUrlString(url);
}

void facebook() async {
  const url = 'https://www.facebook.com/abdallh2002/';
  await launchUrlString(url);
}

void instagram() async {
  const url = 'https://www.instagram.com/abdalluh_essam_22/';
  await launchUrlString(url);
}

void webSite() async {
  const url = 'https://abdalluh-essam.com/';
  await launchUrlString(url);
}

Widget buildMenuItem({
  required String text,
  required String icon,
  VoidCallback? onClicked,
}) {
  SettingsController controller = Get.put(SettingsController());

  return ListTileTheme(
    contentPadding: const EdgeInsets.symmetric(horizontal: 10.0),
    textColor: AppColor.white,
    iconColor: AppColor.white,
    // tileColor: AppColor.gray800,

    child: ListTile(
      title: Text(text, style: const TextStyle(fontWeight: FontWeight.bold)),
      leading: Lottie.asset(icon, fit: BoxFit.cover),
      onTap: onClicked,
      trailing: Icon(
          controller.myServices.sharedPreferences.getString("lang") == "ar"
              ? IconBroken.Arrow___Left_2
              : IconBroken.Arrow___Right_2),
      // dense: true,
    ),
  );
}

Widget buildMedia(
    {required String text,
    required IconData icon,
    void Function()? onPressed}) {
  const color = AppColor.primaryColor;
  return Column(
    children: [
      IconButton(
        onPressed: onPressed,
        iconSize: 35,
        icon: Icon(
          icon,
          color: color,
        ),
      ),
      Text(
        text,
        style: const TextStyle(
            color: AppColor.gray, fontSize: 12, fontWeight: FontWeight.bold),
      ),
    ],
  );
}

void showLanguageModal(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (context) {
      LocaleController controller = Get.put(LocaleController());
      return Container(
        decoration: const BoxDecoration(
          color: AppColor.secondColor,
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              translateDataBase("تغير اللغة", "Change the language"),
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: () {
                controller.changeLang("ar");
                Get.forceAppUpdate();
                Get.appUpdate();
                Get.back();
                HomeScreenControllerImp controllerHome =
                    Get.put(HomeScreenControllerImp());
                controllerHome.update();
                Get.forceAppUpdate();
                Get.appUpdate();
              },
              textColor: AppColor.backgroundColor,
              color: AppColor.primaryColor,
              minWidth: double.infinity,
              child: Text(
                translateDataBase("اللغة العربية", "Arabic"),
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            MaterialButton(
              onPressed: () {
                controller.changeLang("en");
                Get.forceAppUpdate();
                Get.appUpdate();
                Get.back();
                HomeScreenControllerImp controllerHome =
                    Get.put(HomeScreenControllerImp());
                controllerHome.update();
                Get.forceAppUpdate();
                Get.appUpdate();
              },
              textColor: AppColor.backgroundColor,
              color: AppColor.primaryColor,
              minWidth: double.infinity,
              child: Text(
                translateDataBase("اللغة الانجليزية", "English"),
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      );
    },
  );
}
