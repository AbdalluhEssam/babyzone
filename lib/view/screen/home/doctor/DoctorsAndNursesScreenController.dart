import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Constant.dart';

class MemberOfDoctorsOrNursesMenu extends StatefulWidget {
  final String imageDoctorsOrNurses;
  final String idDoctorsOrNurses;
  final String nameDoctorsOrNurses;
  final String ageDoctorsOrNurses;
  final String specialtyDoctorsOrNurses;
  final String overviewDoctorsOrNurses;
  final String phoneDoctorsOrNurses;
  final String raetDoctorsOrNurses;

  const MemberOfDoctorsOrNursesMenu(
      {super.key,
      required this.imageDoctorsOrNurses,
      required this.nameDoctorsOrNurses,
      required this.ageDoctorsOrNurses,
      required this.specialtyDoctorsOrNurses,
      required this.overviewDoctorsOrNurses,
      required this.phoneDoctorsOrNurses,
      required this.idDoctorsOrNurses,
      required this.raetDoctorsOrNurses});

  @override
  State<MemberOfDoctorsOrNursesMenu> createState() =>
      _MemberOfDoctorsOrNursesMenuState();
}

class _MemberOfDoctorsOrNursesMenuState
    extends State<MemberOfDoctorsOrNursesMenu> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: InkWell(
            onTap: () {
              Get.to(MainClass(
                content: Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      //color: backGroundColor,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        width: 2,
                        color: babyZoneColor,
                      ),
                      boxShadow: List.filled(
                          2,
                          const BoxShadow(
                            blurStyle: BlurStyle.outer,
                            spreadRadius:
                                CircularProgressIndicator.strokeAlignOutside,
                            offset: Offset(
                                ScrollDragController
                                    .momentumRetainVelocityThresholdFactor,
                                ScrollDragController
                                    .momentumRetainVelocityThresholdFactor),
                            color: babyZoneColor,
                            blurRadius: 2,
                          )),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.45,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            //color: Colors.green,
                          ),
                          child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            child: CachedNetworkImage(
                              width: MediaQuery.of(context).size.width * 0.45,
                              height: MediaQuery.of(context).size.height * 0.2,
                              imageUrl: widget.imageDoctorsOrNurses,
                              fit: BoxFit.fill,
                              placeholder: (context, url) =>
                                  const CircularProgressIndicator(),
                              errorWidget: (context, url, error) => const Icon(
                                Icons.error,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                child: Text("ID : ", style: smallBlueFont),
                              ),
                              SizedBox(
                                //color: Colors.green,
                                width: MediaQuery.of(context).size.width * 0.5,
                                child: Text(widget.idDoctorsOrNurses,
                                    textAlign: TextAlign.end,
                                    overflow: TextOverflow.ellipsis,
                                    style: smallBlackFont),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                child: Text("NAME : ", style: smallBlueFont),
                              ),
                              SizedBox(
                                //color: Colors.green,
                                width: MediaQuery.of(context).size.width * 0.5,
                                child: Text(widget.nameDoctorsOrNurses,
                                    textAlign: TextAlign.end,
                                    overflow: TextOverflow.ellipsis,
                                    style: smallBlackFont),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                child: Text("AGE : ", style: smallBlueFont),
                              ),
                              SizedBox(
                                //color: Colors.green,
                                width: MediaQuery.of(context).size.width * 0.5,
                                child: Text(widget.ageDoctorsOrNurses,
                                    textAlign: TextAlign.end,
                                    overflow: TextOverflow.ellipsis,
                                    style: smallBlackFont),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                child:
                                    Text("SPECIALTY : ", style: smallBlueFont),
                              ),
                              SizedBox(
                                //color: Colors.green,
                                width: MediaQuery.of(context).size.width * 0.5,
                                child: Text(widget.specialtyDoctorsOrNurses,
                                    textAlign: TextAlign.end,
                                    overflow: TextOverflow.ellipsis,
                                    style: smallBlackFont),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                child: Text("PHONE : ", style: smallBlueFont),
                              ),
                              SizedBox(
                                //color: Colors.green,
                                width: MediaQuery.of(context).size.width * 0.5,
                                child: Text(widget.phoneDoctorsOrNurses,
                                    textAlign: TextAlign.end,
                                    overflow: TextOverflow.ellipsis,
                                    style: smallBlackFont),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                child: Text("RATE : ", style: smallBlueFont),
                              ),
                              SizedBox(
                                  //color: Colors.green,
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(widget.raetDoctorsOrNurses,
                                          textAlign: TextAlign.end,
                                          overflow: TextOverflow.ellipsis,
                                          style: smallBlueFont),
                                      Text("/ 5 Out Of ",
                                          textAlign: TextAlign.end,
                                          overflow: TextOverflow.ellipsis,
                                          style: smallBlackFont),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      const Icon(
                                        Icons.star,
                                        color: Colors.amberAccent,
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                child:
                                    Text("OVERVIEW : ", style: smallBlueFont),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: SizedBox(
                            //color: Colors.green,
                            width: MediaQuery.of(context).size.width,
                            child: Text(widget.overviewDoctorsOrNurses,
                                textAlign: TextAlign.center,
                                //overflow: TextOverflow.ellipsis,
                                style: smallBlackFont),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                ),
              ));
            },
            child: Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                //color: backGroundColor,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  width: 2,
                  color: babyZoneColor,
                ),
                boxShadow: List.filled(
                    2,
                    const BoxShadow(
                      blurStyle: BlurStyle.outer,
                      spreadRadius:
                          CircularProgressIndicator.strokeAlignOutside,
                      offset: Offset(
                          ScrollDragController
                              .momentumRetainVelocityThresholdFactor,
                          ScrollDragController
                              .momentumRetainVelocityThresholdFactor),
                      color: babyZoneColor,
                      blurRadius: 2,
                    )),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 6),
                      child: Container(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        width: MediaQuery.of(context).size.width * 0.4,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                          ),
                          //color: Colors.pink,
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  child: Text("NAME : ", style: smallBlueFont),
                                ),
                                SizedBox(
                                  //color: Colors.green,
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  child: Text(widget.nameDoctorsOrNurses,
                                      overflow: TextOverflow.ellipsis,
                                      style: smallBlackFont),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  child: Text("AGE : ", style: smallBlueFont),
                                ),
                                SizedBox(
                                  //color: Colors.green,
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  child: Text(widget.ageDoctorsOrNurses,
                                      overflow: TextOverflow.ellipsis,
                                      style: smallBlackFont),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  child: Text("SPECIALTY : ",
                                      style: smallBlueFont),
                                ),
                                SizedBox(
                                  //color: Colors.green,
                                  width:
                                      MediaQuery.of(context).size.width * 0.14,
                                  child: Text(widget.specialtyDoctorsOrNurses,
                                      overflow: TextOverflow.ellipsis,
                                      style: smallBlackFont),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  CachedNetworkImage(
                    height: Get.width * 0.4,
                    imageUrl: widget.imageDoctorsOrNurses,
                    fit: BoxFit.cover,
                    placeholder: (context, url) =>
                        const CircularProgressIndicator(),
                    errorWidget: (context, url, error) => const Icon(
                      Icons.error,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
