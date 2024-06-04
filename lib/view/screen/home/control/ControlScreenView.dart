import 'package:babyzone/controller/home/doctors_controller/childrenOnly_controller.dart';
import 'package:babyzone/core/class/handlingdataview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiffy/jiffy.dart';
import '../../../widget/fl_linner.dart';
import 'ControlScreenController.dart';
import 'SettingScreenController.dart';

class ControlScreen extends StatefulWidget {
  const ControlScreen({super.key});

  @override
  State<ControlScreen> createState() => _ControlScreenState();
}

class _ControlScreenState extends State<ControlScreen> {
  @override
  Widget build(BuildContext context) {
    Get.put(ChildrenOnlyControllerImp());
    return Scaffold(
      appBar: AppBar(
        title: GetBuilder<ChildrenOnlyControllerImp>(
          builder: (controller) => Text("${controller.children.name}"),
        ),
      ),
      bottomNavigationBar: GetBuilder<ChildrenOnlyControllerImp>(
        builder: (controller) => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const TypeOfSetting(
              nameTypeOfSetting: "Control Button",
            ),
            SettingSwitchButton(
              iconSettingSwitchButton: const Icon(
                Icons.mode_fan_off_outlined,
                size: 26,
              ),
              nameSettingSwitchButton: "Fan",
              initialValue: controller.fanStatusBool,
              onChanged: (value) {
                setState(() {
                  controller.changeFan(value);
                });
              },
            ),
            SettingSwitchButton(
              iconSettingSwitchButton: const Icon(
                Icons.power_outlined,
                size: 25,
              ),
              nameSettingSwitchButton: "LED",
              initialValue: controller.ledStatusBool,
              onChanged: (value) {
                setState(() {
                  controller.changeLed(value);
                });
              },
            ),
          ],
        ),
      ),
      body: GetBuilder<ChildrenOnlyControllerImp>(
        builder: (controller) => HandlingDataView(
            statusRequest: controller.statusRequest,
            widget: SingleChildScrollView(
              child: DetailsAndControlsSensorsOfBaby(
                onPressed: () {},
                imageBaby:
                    "https://hips.hearstapps.com/ghk.h-cdn.co/assets/16/19/3200x1600/landscape-1463072070-baby-names.jpg?resize=640:*",
                nameBaby: "${controller.children.name}",
                ageBaby: controller.children.berathDate.toString(),
                facilitiesNameBaby: "${controller.children.doctorName}",
                facilitiesPhoneBaby: "${controller.children.doctorPhone}",
                durationOfSStayBaby: Jiffy(
                        "${DateTime.parse(controller.children.entryDate.toString())}")
                    .fromNow(),
                highHeartRateSensorBaby: "${controller.children.bmp}",
                lowHeartRateSensorBaby: '${controller.children.bmp}',
                temperatureRateSensorBaby: "${controller.children.bodyTemp}",
                bloodOxygenLevelSensorBaby: "${controller.children.oxygen}",
                jaundiceRateSensorBaby: "${controller.children.oxygen}",
                milkBottleRateSensorBaby:
                    "${controller.children.jaundiceRatio}",
                diaperRateSensorBaby: "${controller.children.jaundiceStatu}",
                weightSensorBaby: "${controller.children.wight}",
                bpm: SizedBox(
                    height: 25,
                    width: 100,
                    child: ECGChart(ecgData: controller.ecgData)),
              ),
            )),
      ),
    );
  }
}
