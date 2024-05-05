import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import '../../../core/constant/color.dart';
import '../../../core/functions/translatedordatabase.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text("help".tr),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: AppColor.primaryColor,
              height: 2,
              width: 300,
              margin: const EdgeInsets.symmetric(vertical: 10),
            ),
            Container(
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColor.primaryColor.withOpacity(0.2)),
                child: Card(
                  margin: const EdgeInsets.all(8),
                  child: buildMenuItem(
                      icon: Icons.phone_outlined,
                      text: translateDataBase("٥٨١٩ ٦١ ٠١٠٠٠", "01000 61 5819"),
                      onClicked: () {
                        calling();
                      }),
                )),
            Container(
              color: AppColor.primaryColor,
              height: 2,
              width: 300,
              margin: const EdgeInsets.symmetric(vertical: 10),
            ),
            Container(
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColor.primaryColor.withOpacity(0.2)),
              child: Card(
                margin: const EdgeInsets.all(8),
                child: buildMenuItem(
                    icon: Icons.mail,
                    text: "abdallhesam100!gmail.com",
                    onClicked: () {
                      sentMail();
                    }),
              ),
            ),
            Container(
              color: AppColor.primaryColor,
              height: 2,
              width: 300,
              margin: const EdgeInsets.symmetric(vertical: 10),
            ),
            const Spacer(),
            Container(
              child: const Text("KNOWN TECH | ©20234"),
            ),
          ],
        ),
      ),
    );
  }

  calling() async {
    const url = 'tel:01000615819';
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw 'Could not lanuch $url';
    }
  }

  sentMail() async {
    String? encodeQueryParameters(Map<String, String> params) {
      return params.entries
          .map((MapEntry<String, String> e) =>
              '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
          .join('&');
    }

// ···
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'abdallhesam100!gmail.com',
      query: encodeQueryParameters(<String, String>{
        'subject': 'Welcome To KNOWN TECH',
      }),
    );
    launchUrl(emailLaunchUri);
  }
}

Widget buildMenuItem({
  required String text,
  required IconData icon,
  VoidCallback? onClicked,
}) {
  const color = AppColor.primaryColor;
  const hoverColor = AppColor.primaryColor;
  return ListTile(
    leading: Icon(
      icon,
      color: color,
    ),
    title: Text(
      text,
      style: const TextStyle(color: hoverColor),
    ),
    hoverColor: hoverColor,
    onTap: onClicked,
  );
}
