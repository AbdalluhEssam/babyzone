import 'package:babyzone/controller/home/doctors_controller/children_controller.dart';
import 'package:babyzone/core/constant/routes.dart';
import 'package:babyzone/likeapi.dart';
import 'package:babyzone/view/widget/home/customcardhome.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/class/handlingdataview.dart';

class ChildrenViewScreen extends StatelessWidget {
  const ChildrenViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ChildrenControllerImp());
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Children"),
      ),
      body: GetBuilder<ChildrenControllerImp>(
        builder: (controller) => HandlingDataView(
            statusRequest: controller.statusRequest,
            widget: ListView.separated(
                itemBuilder: (context, index) => InkWell(
                      onTap: () {
                        Get.toNamed(AppRoute.controlScreen, arguments: {
                          "idChild": controller.children[index].id
                        });
                      },
                      child: Card(
                        margin: const EdgeInsets.all(15),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    RowTitle(
                                        title: "Child Name",
                                        name:
                                            "${controller.children[index].name}"),
                                    RowTitle(
                                        title: "Dad Name",
                                        name:
                                            "${controller.children[index].dadName}"),
                                    RowTitle(
                                        title: "Doctor Name",
                                        name:
                                            "${controller.children[index].doctorName}"),
                                  ],
                                ),
                                CircleAvatar(
                                  radius: 50,
                                  backgroundImage: CachedNetworkImageProvider(
                                      "${AppLink.imageUsers}/${controller.children[index].doctorPhoto}"),
                                )
                              ]),
                        ),
                      ),
                    ),
                separatorBuilder: (context, index) => const SizedBox(
                      height: 5,
                    ),
                itemCount: controller.children.length)),
      ),
    );
  }
}
