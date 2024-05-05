import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:babyzone/core/constant/color.dart';
import 'package:babyzone/core/functions/alertextiapp.dart';
import '../../../controller/home/homescreen_controller.dart';
import '../../../core/constant/apptheme.dart';

class HomeScreen extends GetView<HomeScreenControllerImp> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double displayWidth = Get.width;

    Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeScreenControllerImp>(
        builder: (controller) => Scaffold(
              // backgroundColor: AppColor.primaryColor.withOpacity(0.15),
              bottomNavigationBar: GetBuilder<HomeScreenControllerImp>(
                  init: HomeScreenControllerImp(),
                  builder: (controller) => Container(
                        height: displayWidth * .155,
                        decoration: BoxDecoration(
                          color: ThemeService().getThemeMode() == ThemeMode.dark
                              ? AppColor.black
                              : Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: AppColor.primaryColor.withOpacity(.2),
                              blurRadius: 30,
                              offset: const Offset(0, 10),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ...List.generate(
                                  controller.listOfStrings.length,
                                  (index) => InkWell(
                                        onTap: () {
                                          controller.changePage(index);
                                          controller.update();
                                        },
                                        splashColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        child: Stack(
                                          children: [
                                            AnimatedContainer(
                                              duration:
                                                  const Duration(seconds: 1),
                                              curve:
                                                  Curves.fastLinearToSlowEaseIn,
                                              width: index ==
                                                      controller.currentIndex
                                                  ? displayWidth * .32
                                                  : displayWidth * .18,
                                              alignment: Alignment.center,
                                              child: AnimatedContainer(
                                                duration:
                                                    const Duration(seconds: 1),
                                                curve: Curves
                                                    .fastLinearToSlowEaseIn,
                                                height: index ==
                                                        controller.currentIndex
                                                    ? displayWidth * .12
                                                    : 0,
                                                width: index ==
                                                        controller.currentIndex
                                                    ? displayWidth * .32
                                                    : 0,
                                                decoration: BoxDecoration(
                                                  color: index ==
                                                          controller
                                                              .currentIndex
                                                      ? Colors.blueAccent
                                                          .withOpacity(.2)
                                                      : Colors.transparent,
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                ),
                                              ),
                                            ),
                                            AnimatedContainer(
                                              duration:
                                                  const Duration(seconds: 1),
                                              curve:
                                                  Curves.fastLinearToSlowEaseIn,
                                              width: index ==
                                                      controller.currentIndex
                                                  ? displayWidth * .31
                                                  : displayWidth * .18,
                                              alignment: Alignment.center,
                                              child: Stack(
                                                children: [
                                                  Row(
                                                    children: [
                                                      AnimatedContainer(
                                                        duration:
                                                            const Duration(
                                                                seconds: 1),
                                                        curve: Curves
                                                            .fastLinearToSlowEaseIn,
                                                        width: index ==
                                                                controller
                                                                    .currentIndex
                                                            ? displayWidth * .13
                                                            : 0,
                                                      ),
                                                      AnimatedOpacity(
                                                        opacity: index ==
                                                                controller
                                                                    .currentIndex
                                                            ? 1
                                                            : 0,
                                                        duration:
                                                            const Duration(
                                                                seconds: 1),
                                                        curve: Curves
                                                            .fastLinearToSlowEaseIn,
                                                        child: GetBuilder<
                                                                HomeScreenControllerImp>(
                                                            builder: (context) {
                                                          return Text(
                                                            index ==
                                                                    controller
                                                                        .currentIndex
                                                                ? controller
                                                                    .listOfStrings[
                                                                        index]
                                                                    .toString()
                                                                : '',
                                                            style:
                                                                const TextStyle(
                                                              color: Colors
                                                                  .blueAccent,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: 15,
                                                            ),
                                                          );
                                                        }),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      AnimatedContainer(
                                                        duration:
                                                            const Duration(
                                                                seconds: 1),
                                                        curve: Curves
                                                            .fastLinearToSlowEaseIn,
                                                        width: index ==
                                                                controller
                                                                    .currentIndex
                                                            ? displayWidth * .03
                                                            : 20,
                                                      ),
                                                      Icon(
                                                        controller
                                                            .listOfIcons[index],
                                                        size:
                                                            displayWidth * .076,
                                                        color: index ==
                                                                controller
                                                                    .currentIndex
                                                            ? Colors.blueAccent
                                                            : ThemeService()
                                                                        .getThemeMode() ==
                                                                    ThemeMode
                                                                        .dark
                                                                ? Colors.white
                                                                : Colors
                                                                    .black26,
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ))
                            ],
                          ),
                        ),
                      )),

              body: WillPopScope(
                onWillPop: alertExitApp,
                child: controller.listPage.elementAt(controller.currentIndex),
              ),
            ));
  }
}
