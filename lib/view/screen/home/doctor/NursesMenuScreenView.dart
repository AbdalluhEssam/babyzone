import 'package:babyzone/controller/home/doctors_controller/nurses_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/class/handlingdataview.dart';
import '../../../../likeapi.dart';
import 'DoctorsAndNursesScreenController.dart';

class NursesMenuScreen extends StatelessWidget {
  const NursesMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(NursesControllerImp());
    return Scaffold(
      body: GetBuilder<NursesControllerImp>(
        builder: (controller) => HandlingDataView(
            statusRequest: controller.statusRequest,
            widget: ListView.separated(
                itemBuilder: (context, index) =>
                    MemberOfDoctorsOrNursesMenu(
                      imageDoctorsOrNurses:
                      "${AppLink.imageUsers}/${controller.users[index].image}",
                      idDoctorsOrNurses: "${controller.users[index].usersId}",
                      nameDoctorsOrNurses: "${controller.users[index].usersName}",
                      ageDoctorsOrNurses: "32",
                      specialtyDoctorsOrNurses: "${controller.users[index].name}",
                      phoneDoctorsOrNurses: "${controller.users[index].usersPhone}",
                      raetDoctorsOrNurses: "4.2",
                      overviewDoctorsOrNurses:
                      "${controller.users[index].usersName} is one of the most important doctors specializing in the field of general surgery for newborns. He has a large group of certificates accredited by many universities in America and Britain in this specialty .",
                    ),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 5,
                ),
                itemCount: controller.users.length)),
      ),
    );
  }
}
