import 'package:babyzone/controller/home/doctors_controller/childrenOnly_controller.dart';
import 'package:babyzone/core/class/handlingdataview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiffy/jiffy.dart';
import 'ControlScreenController.dart';

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
      body: GetBuilder<ChildrenOnlyControllerImp>(
        builder: (controller) => HandlingDataView(
            statusRequest: controller.statusRequest,
            widget: SingleChildScrollView(
              child: DetailsAndControlsSensorsOfBaby(
                onPressed: () {

                },
                imageBaby:
                    "https://hips.hearstapps.com/ghk.h-cdn.co/assets/16/19/3200x1600/landscape-1463072070-baby-names.jpg?resize=640:*",
                nameBaby: "${controller.children.name}",
                ageBaby: controller.children.berathDate.toString(),
                facilitiesNameBaby: "${controller.children.doctorName}",
                facilitiesPhoneBaby: "${controller.children.doctorPhone}",
                durationOfSStayBaby: controller.children.outDate == null
                    ? Jiffy("${DateTime.parse(controller.children.entryDate.toString())}")
                        .fromNow()
                    : Jiffy("${DateTime.parse(controller.children.entryDate.toString())}")
                        .from(DateTime.parse(
                            controller.children.outDate.toString())),
                highHeartRateSensorBaby: "${controller.children.bmp}",
                lowHeartRateSensorBaby: '${controller.children.bmp}',
                temperatureRateSensorBaby: "${controller.children.bodyTemp}",
                bloodOxygenLevelSensorBaby: "${controller.children.oxygen}",
                jaundiceRateSensorBaby: "${controller.children.oxygen}",
                milkBottleRateSensorBaby:
                    "${controller.children.jaundiceRatio}",
                diaperRateSensorBaby: "${controller.children.jaundiceStatu}",
                weightSensorBaby: "${controller.children.wight}",
              ),
            )),
      ),
    );
  }
}
