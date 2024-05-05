import 'package:babyzone/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

import '../../Constant.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 4),
    vsync: this,
  )..repeat();
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.fastOutSlowIn,
  );

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 4)).then((value) {
      Get.toNamed(AppRoute.homeScreen);
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              const BigSpace(),
              const BigSpace(),
              const BigSpace(),
              const BigSpace(),
              const BigSpace(),
              const SmallSpace(),
              const SmallSpace(),
              SizeTransition(
                sizeFactor: _animation,
                axis: Axis.vertical,
                axisAlignment: -1,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: SizedBox(
                    //color: Colors.pink,
                      width: MediaQuery.of(context).size.width,
                      child: const Column(
                        children: [
                          SmallSpace(),
                          ImageLogoApp(),
                          SizedBox(
                            height: 22,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "BABY",
                                style: TextStyle(
                                    fontSize: 40,
                                    color: babyZoneColor,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                "ZONE",
                                style: TextStyle(
                                    fontSize: 40,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      )),
                ),
              ),
              const BigSpace(),
              const BigSpace(),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SpinKitSpinningLines(
                color: Colors.black,
                size: 30,
                controller: AnimationController(
                    vsync: this, duration: const Duration(milliseconds: 1200)),
              ),
              SizedBox(
                //height: 210,
                height: MediaQuery.of(context).size.height * 0.1,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
