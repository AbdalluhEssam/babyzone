import 'package:flutter/material.dart';

import '../../../Constant.dart';

class DetailsAndControlsSensorsOfBaby extends StatefulWidget {
  final String imageBaby;
  final String nameBaby;
  final String ageBaby;
  final String facilitiesNameBaby;
  final String facilitiesPhoneBaby;
  final String durationOfSStayBaby;
  final String highHeartRateSensorBaby;
  final String lowHeartRateSensorBaby;
  final String temperatureRateSensorBaby;
  final String bloodOxygenLevelSensorBaby;
  final String jaundiceRateSensorBaby;
  final String milkBottleRateSensorBaby;
  final String diaperRateSensorBaby;
  final String weightSensorBaby;
  final void Function() onPressed;

  const DetailsAndControlsSensorsOfBaby(
      {super.key,
      required this.imageBaby,
      required this.nameBaby,
      required this.ageBaby,
      required this.facilitiesNameBaby,
      required this.durationOfSStayBaby,
      required this.facilitiesPhoneBaby,
      required this.highHeartRateSensorBaby,
      required this.temperatureRateSensorBaby,
      required this.bloodOxygenLevelSensorBaby,
      required this.jaundiceRateSensorBaby,
      required this.milkBottleRateSensorBaby,
      required this.diaperRateSensorBaby,
      required this.weightSensorBaby,
      required this.lowHeartRateSensorBaby,
      required this.onPressed});

  @override
  State<DetailsAndControlsSensorsOfBaby> createState() =>
      _DetailsAndControlsSensorsOfBabyState();
}

class _DetailsAndControlsSensorsOfBabyState
    extends State<DetailsAndControlsSensorsOfBaby> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("DETAILS BABY", style: bigBlueFont),
              OutlinedButton.icon(
                  onPressed: widget.onPressed,
                  icon: const Icon(Icons.ondemand_video_outlined),
                  label: const Text("Live Stream"))
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            decoration: BoxDecoration(
              //color: backGroundColor,
              borderRadius: const BorderRadius.all(Radius.circular(7)),
              border: Border.all(
                width: 2,
                color: babyZoneColor,
              ),
              boxShadow: List.filled(
                  2,
                  const BoxShadow(
                    blurStyle: BlurStyle.outer,
                    spreadRadius: CircularProgressIndicator.strokeAlignOutside,
                    offset: Offset(
                        ScrollDragController
                            .momentumRetainVelocityThresholdFactor,
                        ScrollDragController
                            .momentumRetainVelocityThresholdFactor),
                    color: babyZoneColor,
                    blurRadius: 2,
                  )),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        child: Text("NAME : ", style: smallBlueFont),
                      ),
                      SizedBox(
                        //color: Colors.green,
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Text(widget.nameBaby,
                            textAlign: TextAlign.end,
                            overflow: TextOverflow.ellipsis,
                            style: smallBlackFont),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              //color: backGroundColor,
              borderRadius: const BorderRadius.all(Radius.circular(7)),
              border: Border.all(
                width: 2,
                color: babyZoneColor,
              ),
              boxShadow: List.filled(
                  2,
                  const BoxShadow(
                    blurStyle: BlurStyle.outer,
                    spreadRadius: CircularProgressIndicator.strokeAlignOutside,
                    offset: Offset(
                        ScrollDragController
                            .momentumRetainVelocityThresholdFactor,
                        ScrollDragController
                            .momentumRetainVelocityThresholdFactor),
                    color: babyZoneColor,
                    blurRadius: 2,
                  )),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        child: Text("Date Of Birth : ", style: smallBlueFont),
                      ),
                      SizedBox(
                        //color: Colors.green,
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Text(widget.ageBaby,
                            textAlign: TextAlign.end,
                            overflow: TextOverflow.ellipsis,
                            style: smallBlackFont),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              //color: backGroundColor,
              borderRadius: const BorderRadius.all(Radius.circular(7)),
              border: Border.all(
                width: 2,
                color: babyZoneColor,
              ),
              boxShadow: List.filled(
                  2,
                  const BoxShadow(
                    blurStyle: BlurStyle.outer,
                    spreadRadius: CircularProgressIndicator.strokeAlignOutside,
                    offset: Offset(
                        ScrollDragController
                            .momentumRetainVelocityThresholdFactor,
                        ScrollDragController
                            .momentumRetainVelocityThresholdFactor),
                    color: babyZoneColor,
                    blurRadius: 2,
                  )),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        child: Text("FACILITIES Name : ", style: smallBlueFont),
                      ),
                      SizedBox(
                        //color: Colors.green,
                        width: MediaQuery.of(context).size.width * 0.36,
                        child: Text(widget.facilitiesNameBaby,
                            textAlign: TextAlign.end,
                            overflow: TextOverflow.ellipsis,
                            style: smallBlackFont),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              //color: backGroundColor,
              borderRadius: const BorderRadius.all(Radius.circular(7)),
              border: Border.all(
                width: 2,
                color: babyZoneColor,
              ),
              boxShadow: List.filled(
                  2,
                  const BoxShadow(
                    blurStyle: BlurStyle.outer,
                    spreadRadius: CircularProgressIndicator.strokeAlignOutside,
                    offset: Offset(
                        ScrollDragController
                            .momentumRetainVelocityThresholdFactor,
                        ScrollDragController
                            .momentumRetainVelocityThresholdFactor),
                    color: babyZoneColor,
                    blurRadius: 2,
                  )),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        child:
                            Text("FACILITIES PHONE : ", style: smallBlueFont),
                      ),
                      SizedBox(
                        //color: Colors.green,
                        width: MediaQuery.of(context).size.width * 0.35,
                        child: Text(widget.facilitiesPhoneBaby,
                            textAlign: TextAlign.end,
                            overflow: TextOverflow.ellipsis,
                            style: smallBlackFont),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              //color: backGroundColor,
              borderRadius: const BorderRadius.all(Radius.circular(7)),
              border: Border.all(
                width: 2,
                color: babyZoneColor,
              ),
              boxShadow: List.filled(
                  2,
                  const BoxShadow(
                    blurStyle: BlurStyle.outer,
                    spreadRadius: CircularProgressIndicator.strokeAlignOutside,
                    offset: Offset(
                        ScrollDragController
                            .momentumRetainVelocityThresholdFactor,
                        ScrollDragController
                            .momentumRetainVelocityThresholdFactor),
                    color: babyZoneColor,
                    blurRadius: 2,
                  )),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        child:
                            Text("DURATION OF STAY : ", style: smallBlueFont),
                      ),
                      SizedBox(
                        //color: Colors.green,
                        width: MediaQuery.of(context).size.width * 0.33,
                        child: Text(widget.durationOfSStayBaby,
                            textAlign: TextAlign.end,
                            overflow: TextOverflow.ellipsis,
                            style: smallBlackFont),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text("CONTROLS", style: bigBlueFont),
          const SizedBox(
            height: 15,
          ),
          Container(
            decoration: BoxDecoration(
              //color: backGroundColor,
              borderRadius: const BorderRadius.all(Radius.circular(7)),
              border: Border.all(
                width: 2,
                color: babyZoneColor,
              ),
              boxShadow: List.filled(
                  2,
                  const BoxShadow(
                    blurStyle: BlurStyle.outer,
                    spreadRadius: CircularProgressIndicator.strokeAlignOutside,
                    offset: Offset(
                        ScrollDragController
                            .momentumRetainVelocityThresholdFactor,
                        ScrollDragController
                            .momentumRetainVelocityThresholdFactor),
                    color: babyZoneColor,
                    blurRadius: 2,
                  )),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image(
                          image: const AssetImage("images/17.png"),
                          color: Colors.black,
                          // width:
                          // MediaQuery.of(context).size.width *
                          //     0.08,
                          height: MediaQuery.of(context).size.height * 0.028,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text("HEART RATE : ", style: smallBlueFont),
                        const Spacer(),
                        SizedBox(
                          //color: Colors.green,
                          width: MediaQuery.of(context).size.width * 0.33,
                          child: Text(widget.highHeartRateSensorBaby,
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
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              //color: backGroundColor,
              borderRadius: const BorderRadius.all(Radius.circular(7)),
              border: Border.all(
                width: 2,
                color: babyZoneColor,
              ),
              boxShadow: List.filled(
                  2,
                  const BoxShadow(
                    blurStyle: BlurStyle.outer,
                    spreadRadius: CircularProgressIndicator.strokeAlignOutside,
                    offset: Offset(
                        ScrollDragController
                            .momentumRetainVelocityThresholdFactor,
                        ScrollDragController
                            .momentumRetainVelocityThresholdFactor),
                    color: babyZoneColor,
                    blurRadius: 2,
                  )),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image(
                          image: const AssetImage("images/18.png"),
                          color: Colors.black,
                          // width:
                          // MediaQuery.of(context).size.width *
                          //     0.08,
                          height: MediaQuery.of(context).size.height * 0.028,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text("TEMPERATURE RATE : ", style: smallBlueFont),
                        const Spacer(),
                        SizedBox(
                          //color: Colors.green,
                          width: MediaQuery.of(context).size.width * 0.2,
                          child: Text("${widget.temperatureRateSensorBaby} C",
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
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              //color: backGroundColor,
              borderRadius: const BorderRadius.all(Radius.circular(7)),
              border: Border.all(
                width: 2,
                color: babyZoneColor,
              ),
              boxShadow: List.filled(
                  2,
                  const BoxShadow(
                    blurStyle: BlurStyle.outer,
                    spreadRadius: CircularProgressIndicator.strokeAlignOutside,
                    offset: Offset(
                        ScrollDragController
                            .momentumRetainVelocityThresholdFactor,
                        ScrollDragController
                            .momentumRetainVelocityThresholdFactor),
                    color: babyZoneColor,
                    blurRadius: 2,
                  )),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image(
                          image: const AssetImage("images/21.png"),
                          color: Colors.black,
                          // width:
                          // MediaQuery.of(context).size.width *
                          //     0.08,
                          height: MediaQuery.of(context).size.height * 0.028,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text("BLOOD OXYGEN LEVEL : ", style: smallBlueFont),
                        const Spacer(),
                        SizedBox(
                          //color: Colors.green,
                          width: MediaQuery.of(context).size.width * 0.2,
                          child: Text("${widget.bloodOxygenLevelSensorBaby} %",
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
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              //color: backGroundColor,
              borderRadius: const BorderRadius.all(Radius.circular(7)),
              border: Border.all(
                width: 2,
                color: babyZoneColor,
              ),
              boxShadow: List.filled(
                  2,
                  const BoxShadow(
                    blurStyle: BlurStyle.outer,
                    spreadRadius: CircularProgressIndicator.strokeAlignOutside,
                    offset: Offset(
                        ScrollDragController
                            .momentumRetainVelocityThresholdFactor,
                        ScrollDragController
                            .momentumRetainVelocityThresholdFactor),
                    color: babyZoneColor,
                    blurRadius: 2,
                  )),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image(
                          image: const AssetImage("images/19.png"),
                          color: Colors.black,
                          // width:
                          // MediaQuery.of(context).size.width *
                          //     0.08,
                          height: MediaQuery.of(context).size.height * 0.028,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text("JAUNDICE RATE : ", style: smallBlueFont),
                        const Spacer(),
                        SizedBox(
                          //color: Colors.green,
                          width: MediaQuery.of(context).size.width * 0.2,
                          child: Text("${widget.jaundiceRateSensorBaby} %",
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
                ],
              ),
            ),
          ),
          // const SizedBox(
          //   height: 20,
          // ),
          // Container(
          //   decoration: BoxDecoration(
          //     //color: backGroundColor,
          //     borderRadius:
          //     const BorderRadius.all(Radius.circular(7)),
          //     border: Border.all(
          //       width: 2,
          //       color: babyZoneColor,
          //     ),
          //     boxShadow: List.filled(
          //         2,
          //         const BoxShadow(
          //           blurStyle: BlurStyle.outer,
          //           spreadRadius: CircularProgressIndicator
          //               .strokeAlignOutside,
          //           offset: Offset(
          //               ScrollDragController
          //                   .momentumRetainVelocityThresholdFactor,
          //               ScrollDragController
          //                   .momentumRetainVelocityThresholdFactor),
          //           color: babyZoneColor,
          //           blurRadius: 2,
          //         )),
          //   ),
          //   child: Padding(
          //     padding: const EdgeInsets.only(left: 10, right: 10),
          //     child: Column(
          //       children: [
          //         const SizedBox(
          //           height: 15,
          //         ),
          //         SizedBox(
          //           child: Row(
          //             mainAxisAlignment:
          //             MainAxisAlignment.spaceBetween,
          //             children: [
          //               Image(
          //                 image:
          //                 const AssetImage("images/22.png"),
          //                 color: Colors.black,
          //                 // width:
          //                 // MediaQuery.of(context).size.width *
          //                 //     0.08,
          //                 height:
          //                 MediaQuery.of(context).size.height *
          //                     0.028,
          //               ),
          //               const SizedBox(
          //                 width: 10,
          //               ),
          //               Text("MILK BOTTLE RATE : ",
          //                   style: smallBlueFont),
          //               const Spacer(),
          //               SizedBox(
          //                 //color: Colors.green,
          //                 width:
          //                 MediaQuery.of(context).size.width *
          //                     0.2,
          //                 child: Text(
          //                     "${widget.milkBottleRateSensorBaby} %",
          //                     textAlign: TextAlign.end,
          //                     overflow: TextOverflow.ellipsis,
          //                     style: smallBlackFont),
          //               ),
          //             ],
          //           ),
          //         ),
          //         const SizedBox(
          //           height: 15,
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              //color: backGroundColor,
              borderRadius: const BorderRadius.all(Radius.circular(7)),
              border: Border.all(
                width: 2,
                color: babyZoneColor,
              ),
              boxShadow: List.filled(
                  2,
                  const BoxShadow(
                    blurStyle: BlurStyle.outer,
                    spreadRadius: CircularProgressIndicator.strokeAlignOutside,
                    offset: Offset(
                        ScrollDragController
                            .momentumRetainVelocityThresholdFactor,
                        ScrollDragController
                            .momentumRetainVelocityThresholdFactor),
                    color: babyZoneColor,
                    blurRadius: 2,
                  )),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image(
                          image: const AssetImage("images/23.png"),
                          color: Colors.black,
                          // width:
                          // MediaQuery.of(context).size.width *
                          //     0.08,
                          height: MediaQuery.of(context).size.height * 0.028,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text("DIAPER RATE : ", style: smallBlueFont),
                        const Spacer(),
                        SizedBox(
                          //color: Colors.green,
                          width: MediaQuery.of(context).size.width * 0.2,
                          child: Text("${widget.diaperRateSensorBaby} %",
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
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              //color: backGroundColor,
              borderRadius: const BorderRadius.all(Radius.circular(7)),
              border: Border.all(
                width: 2,
                color: babyZoneColor,
              ),
              boxShadow: List.filled(
                  2,
                  const BoxShadow(
                    blurStyle: BlurStyle.outer,
                    spreadRadius: CircularProgressIndicator.strokeAlignOutside,
                    offset: Offset(
                        ScrollDragController
                            .momentumRetainVelocityThresholdFactor,
                        ScrollDragController
                            .momentumRetainVelocityThresholdFactor),
                    color: babyZoneColor,
                    blurRadius: 2,
                  )),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image(
                          image: const AssetImage("images/24.png"),
                          color: Colors.black,
                          // width:
                          // MediaQuery.of(context).size.width *
                          //     0.08,
                          height: MediaQuery.of(context).size.height * 0.028,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text("WEIGHT BABY : ", style: smallBlueFont),
                        const Spacer(),
                        SizedBox(
                          //color: Colors.green,
                          width: MediaQuery.of(context).size.width * 0.2,
                          child: Text("${widget.weightSensorBaby} KG",
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
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
