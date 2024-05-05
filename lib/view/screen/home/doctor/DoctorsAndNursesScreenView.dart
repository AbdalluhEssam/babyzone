import 'package:babyzone/controller/home/doctors_controller/doctors_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Constant.dart';
import 'DoctorsMenuScreenView.dart';
import 'NursesMenuScreenView.dart';



class DoctorsAndNursesScreen extends StatefulWidget {
  const DoctorsAndNursesScreen({super.key});

  @override
  State<DoctorsAndNursesScreen> createState() => _DoctorsAndNursesScreenState();
}

class _DoctorsAndNursesScreenState extends State<DoctorsAndNursesScreen>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const BabyZoneText(),
        centerTitle: true,
        elevation: 0,
        leading: Container(),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              "",
              style: TextStyle(
                fontWeight: FontWeight.bold,

              ),
            ),
          ),
        ],
        bottom: TabBar(
          indicatorColor: babyZoneColor,
          indicatorWeight: 4,
          dividerColor: backGroundColor,
          controller: _controller,
          overlayColor: const MaterialStatePropertyAll(Colors.white),
          tabs: [
            Tab(
              child: Text("Nurses", style: bigBlackFont),
            ),
            Tab(
              child: Text("Doctors", style: bigBlackFont),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children:  [
          const NursesMenuScreen(),
          GetBuilder<DoctorsControllerImp>(
            init: DoctorsControllerImp(),
            builder: (controller) => const DoctorsMenuScreen(),),
        ],
      ),
    );
  }
}
