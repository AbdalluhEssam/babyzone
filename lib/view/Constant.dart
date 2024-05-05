import 'package:flutter/material.dart';

const backGroundColor = Colors.white;
const babyZoneColor = Color(0xff1581FF);

var bigBlackFont = const TextStyle(fontWeight: FontWeight.bold, fontSize: 18);

var mediumBlackFont = const TextStyle(
   fontWeight: FontWeight.bold, fontSize: 16);

var smallBlackFont = const TextStyle(
fontWeight: FontWeight.bold, fontSize: 14);

var bigWhiteFont = const TextStyle(
    fontWeight: FontWeight.bold, fontSize: 18);

var mediumWhiteFont = const TextStyle(
   fontWeight: FontWeight.bold, fontSize: 16);

var smallWhiteFont = const TextStyle(
     fontWeight: FontWeight.bold, fontSize: 14);

var bigBlueFont = const TextStyle(
    fontWeight: FontWeight.bold, fontSize: 18);

var mediumBlueFont = const TextStyle(
     fontWeight: FontWeight.bold, fontSize: 16);

var smallBlueFont = const TextStyle(
   fontWeight: FontWeight.bold, fontSize: 14);

class SmallSpace extends StatelessWidget {
  const SmallSpace({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.02,
      //color: Colors.pink,
    );
  }
}

class BigSpace extends StatelessWidget {
  const BigSpace({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.05,
      //color: Colors.pink,
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backGroundColor,
      title: const BabyZoneText(),
      centerTitle: true,
      elevation: 0.0,
      leading: Container(),
      actions: [
        TextButton(
          style: const ButtonStyle(
              overlayColor: MaterialStatePropertyAll(Colors.white)),
          onPressed: () {},
          child: const Text(
            "",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class BabyZoneText extends StatefulWidget {
  const BabyZoneText({super.key});

  @override
  State<BabyZoneText> createState() => _BabyZoneTextState();
}

class _BabyZoneTextState extends State<BabyZoneText> {
  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
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
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class ImageLogoApp extends StatefulWidget {
  const ImageLogoApp({super.key});

  @override
  State<ImageLogoApp> createState() => _ImageLogoAppState();
}

class _ImageLogoAppState extends State<ImageLogoApp> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.21,
      child: const Image(
        image: AssetImage(
          "images/logo.png",
        ),
        fit: BoxFit.contain,
        color: Colors.black,
      ),
    );
  }
}

class MainClass extends StatefulWidget {
  final Widget content;

  const MainClass({super.key, required this.content});

  @override
  State<MainClass> createState() => _MainClassState();
}

class _MainClassState extends State<MainClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backGroundColor,
        title: const BabyZoneText(),
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        actions: [
          TextButton(
            style: const ButtonStyle(
                overlayColor: MaterialStatePropertyAll(Colors.white)),
            onPressed: () {},
            child: const Text(
              "",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: widget.content,
            ),
          ],
        ),
      ),
    );
  }
}
