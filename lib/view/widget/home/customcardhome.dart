import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../core/constant/color.dart';

class CustomCardHome extends StatelessWidget {
  final String title;
  final String body;

  const CustomCardHome({
    Key? key,
    required this.title,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 15),
        child: Stack(
          children: [
            Container(
              alignment: Alignment.center,
              height: 150,
              decoration: BoxDecoration(
                  color: AppColor.primaryColor,
                  borderRadius: BorderRadius.circular(20)),
              child: ListTile(
                title: Text(
                  title,
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
                subtitle: Text(
                  body,
                  style: const TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
            ),
            Positioned(
              top: -20,
              right: -20,
              child: Container(
                height: 160,
                width: 160,
                decoration: BoxDecoration(
                    color: AppColor.secondColor,
                    borderRadius: BorderRadius.circular(160)),
              ),
            )
          ],
        ));
  }
}

class CustomCardHomeAnimation extends StatelessWidget {
  final String title;
  final int columnCount;
  final int position;
  final double screen;
  final String image;
  final void Function()? onTap;

  const CustomCardHomeAnimation({
    Key? key,
    required this.title,
    required this.columnCount,
    required this.position,
    required this.screen,
    required this.image,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(
          bottom: screen / 30,
          left: screen / 60,
          right: screen / 60,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 40,
              spreadRadius: 10,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: Image.asset(image)),
              const SizedBox(
                height: 15,
              ),
              Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomCardHomeAnimationL extends StatelessWidget {
  final String title;
  final int columnCount;
  final int position;
  final double screen;
  final String image;
  final void Function()? onTap;

  const CustomCardHomeAnimationL({
    Key? key,
    required this.title,
    required this.columnCount,
    required this.position,
    required this.screen,
    required this.image,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        margin: EdgeInsets.only(
          bottom: screen / 30,
          left: screen / 60,
          right: screen / 60,
        ),
        decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 40,
              spreadRadius: 10,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: Lottie.asset(image, width: Get.width)),
              Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 8,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget RowTitle(
    {required String title,
      required String name,
      double? fontSize,
      FontWeight? fontWeight}) =>
    Text(
      "$title : $name",
      style: TextStyle(
          fontSize: fontSize ?? 14,
          fontWeight: fontWeight ?? FontWeight.normal),
    );
