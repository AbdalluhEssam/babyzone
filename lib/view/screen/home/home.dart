import 'package:babyzone/data/model/users_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:babyzone/controller/home/homescreen_controller.dart';
import 'package:babyzone/core/constant/color.dart';
import 'package:babyzone/core/constant/icon_broken.dart';
import 'package:babyzone/core/constant/routes.dart';
import 'package:intl/intl.dart' hide TextDirection;
import '../../../controller/home/home_controller.dart';
import '../../../core/class/handlingdataview.dart';
import '../../../core/functions/translatedordatabase.dart';
import '../../../core/functions/validinput.dart';
import '../../../likeapi.dart';
import '../../Constant.dart';
import '../../widget/auth/customtextformauth.dart';
import '../../widget/home/customcardhome.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    Get.put(HomeScreenControllerImp());
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "BABY",
                style: TextStyle(
                    color: babyZoneColor, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                "ZONE",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          centerTitle: false,
          actions: [
            IconButton(
                onPressed: () {
                  Get.toNamed(AppRoute.notificationScreen);
                },
                icon: const Icon(IconBroken.Notification)),
          ],
        ),
        floatingActionButton: Visibility(
            child: GetBuilder<HomeControllerImp>(
          builder: (controller) => FloatingActionButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return Dialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      elevation: 0,
                      backgroundColor: Colors.transparent,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Form(
                              key: controller.formState,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  const SizedBox(height: 16),
                                  CustomFormAdd(
                                    isNamber: true,
                                    valid: (val) {
                                      return validInput(
                                          val!, 1, 500, "logLevel");
                                    },
                                    mycontroller: controller.logLevel,
                                    label: "Log Level",
                                    hinttext: "Log Level",
                                    iconData: Icons.numbers_outlined,
                                  ),
                                  const SizedBox(height: 16),
                                  CustomFormAdd(
                                    isNamber: false,
                                    valid: (val) {
                                      return validInput(
                                          val!, 1, 10000, "Log Action");
                                    },
                                    mycontroller: controller.logAction,
                                    label: "Log Action",
                                    hinttext: "Log Action",
                                    iconData: IconBroken.Document,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  GetBuilder<HomeControllerImp>(
                                      init: HomeControllerImp(),
                                      builder: (controllerImp) =>
                                          DropdownButton(
                                            style: const TextStyle(
                                              fontSize: 20,
                                              color: AppColor.primaryColor,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(40),
                                            isExpanded: true,
                                            alignment: Alignment.center,
                                            hint: const Text(
                                              "Choose Child",
                                              style: TextStyle(
                                                color: AppColor.primaryColor,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            items: List.generate(
                                                    controllerImp.child.length,
                                                    (index) => controllerImp
                                                        .child[index])
                                                .map((e) => DropdownMenuItem(
                                                      value: e['id'].toString(),
                                                      onTap: () {
                                                        // percentage = e['percentage'];
                                                      },
                                                      child: Text(
                                                        e['name'].toString(),
                                                      ),
                                                    ))
                                                .toList(),
                                            onChanged: (val) {
                                              controller.childId =
                                                  val.toString();
                                              controller.update();

                                              controllerImp.update();
                                            },
                                            value: controller.childId,
                                          )),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  // Add more TextFormField widgets for other fields like phone, etc.
                                  const SizedBox(height: 16),
                                  Row(
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          // Add your logic to save employee data
                                          controller.addData();
                                        },
                                        child: Text(
                                            '${translateDataBase("اضافة", "Add")}'),
                                      ),
                                      const SizedBox(
                                        width: 12,
                                      ),
                                      ElevatedButton(
                                        onPressed: () {
                                          // Add your logic to save employee data
                                          Get.back();
                                        },
                                        child: Text(
                                            '${translateDataBase("الغاء", "Cancel")}'),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  });
              // Get.toNamed(AppRoute.addEmployees,
              //     arguments: {"status": 1.toString()});
            },
            backgroundColor: AppColor.primaryColor,
            child: const Icon(
              Icons.add,
            ),
          ),
        )),
        body: GetBuilder<HomeControllerImp>(
            builder: (controller) => Container(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Expanded(
                                child: TextFormField(
                              onTap: () {
                                controller.onSearchItems();
                              },
                              style: const TextStyle(color: AppColor.primaryColor),
                              keyboardType: TextInputType.text,
                              onChanged: (val) {
                                controller.checkSearch(val);
                              },
                              validator: (val) {
                                return validInput(val!, 1, 1000, "Search");
                              },
                              controller: controller.search,
                              decoration: InputDecoration(
                                fillColor: AppColor.gray800,
                                filled: true,
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 18, vertical: 10),
                                labelStyle: const TextStyle(
                                    color: AppColor.gray,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                                border: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColor.backgroundColor,
                                        width: 1),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50))),
                                enabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColor.backgroundColor,
                                        width: 1),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50))),
                                disabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColor.backgroundColor,
                                        width: 1),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50))),
                                label: Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 5),
                                    child: Text(
                                        translateDataBase("البحث", "Search"))),
                                prefixIcon: IconButton(
                                  onPressed: () {
                                    controller.onSearchItems();
                                  },
                                  icon: Icon(
                                    IconBroken.Search,
                                    color: AppColor.black.withOpacity(0.5),
                                  ),
                                ),
                              ),
                            )),
                          ],
                        ),
                      ),
                      !controller.isSearch == true
                          ? HandlingDataView(
                              statusRequest: controller.statusRequest,
                              widget: ListView.separated(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                padding: EdgeInsets.all(controller.w / 60),
                                itemBuilder:
                                    (BuildContext context, int index) =>
                                        InkWell(
                                  onTap: () {},
                                  child: Container(
                                    decoration: const BoxDecoration(boxShadow: [
                                      BoxShadow(
                                          color: AppColor.primaryColor,
                                          spreadRadius: 1,
                                          blurRadius: 10)
                                    ]),
                                    child: Card(
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Column(
                                                  children: [
                                                    CircleAvatar(
                                                      radius: 40,
                                                      backgroundImage:
                                                          CachedNetworkImageProvider(
                                                              "${AppLink.imageUsers}/${controller.banner[index].image}"),
                                                    ),
                                                    Text(
                                                      "${controller.banner[index].usersName}",
                                                      style: const TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ],
                                                ),
                                                Text(
                                                  "Date :${DateFormat.MMMMEEEEd().format(DateTime.parse(controller.banner[index].createAt!))}\n            ${DateFormat.Hm().format(DateTime.parse(controller.banner[index].createAt!))} AM",
                                                  style: const TextStyle(
                                                      height: 1,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "Level :${controller.banner[index].logLevel}",
                                                  textAlign: TextAlign.center,
                                                ),
                                                Text(
                                                  "Action :${controller.banner[index].logAction}",
                                                  textAlign: TextAlign.center,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                separatorBuilder:
                                    (BuildContext context, int index) =>
                                        const SizedBox(height: 15),
                                itemCount: controller.banner.length,
                              ))
                          : ListItemsSearch(
                              listData: controller.listDataControl),
                    ],
                  ),
                ))));
  }
}

class ListItemsSearch extends GetView<HomeControllerImp> {
  final List<UsersModel> listData;

  const ListItemsSearch({Key? key, required this.listData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeControllerImp>(
      init: HomeControllerImp(),
      builder: (controller) => HandlingDataView(
        statusRequest: controller.statusRequest,
        widget: ListView.builder(
          shrinkWrap: true,
          padding: EdgeInsets.all(controller.w / 30),
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          itemCount: controller.listDataControl.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              margin: EdgeInsets.only(bottom: controller.w / 20),
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
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: InkWell(
                  onTap: () {
                    // Get.toNamed(AppRoute.registrationFile,
                    //     arguments: {
                    //       "registrationsModel":
                    //           controller.listDataControl[index],
                    //     });
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Hero(
                          tag: "${controller.listDataControl[index].id}",
                          child: Container(
                            height: 240,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: CachedNetworkImageProvider(
                                    "${AppLink.imageUsers}/${controller.listDataControl[index].image}"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RowTitle(
                              title: "الاسم",
                              name:
                                  "${controller.listDataControl[index].usersName}",
                            ),
                            RowTitle(
                              title: "الهاتف",
                              name:
                                  "${controller.listDataControl[index].usersPhone}",
                            ),
                            RowTitle(
                              title: "تاريخ الانضمام",
                              name: DateFormat.yMMMEd().format(DateTime.parse(
                                  controller
                                      .listDataControl[index].usersCreate!)),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(color: Colors.green),
                        child: Text(
                          controller.listDataControl[index].name.toString(),
                          style: const TextStyle(
                              fontSize: 18, color: AppColor.backgroundColor),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
