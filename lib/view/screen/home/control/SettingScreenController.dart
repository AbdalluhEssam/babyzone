import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Constant.dart';

class TypeOfSetting extends StatefulWidget {
  final String nameTypeOfSetting;

  const TypeOfSetting({super.key, required this.nameTypeOfSetting});

  @override
  State<TypeOfSetting> createState() => _TypeOfSettingState();
}

class _TypeOfSettingState extends State<TypeOfSetting> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Row(
        children: [
          Column(
            children: [
              const SizedBox(
                height: 5,
              ),
              Text(
                widget.nameTypeOfSetting,
                style: bigBlackFont,
              ),
              const SizedBox(
                height: 5,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SettingSwitchButton extends StatefulWidget {
  final Icon iconSettingSwitchButton;
  final String nameSettingSwitchButton;
  final bool initialValue;
  final Function(bool value)? onChanged;

  const SettingSwitchButton(
      {super.key,
      required this.iconSettingSwitchButton,
      required this.nameSettingSwitchButton,
      required this.initialValue,
      this.onChanged});

  @override
  State<SettingSwitchButton> createState() => _SettingSwitchButtonState();
}

class _SettingSwitchButtonState extends State<SettingSwitchButton> {
  late bool _value;

  @override
  void initState() {
    super.initState();
    _value = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                border: Border.all(color: babyZoneColor, width: 2)),
            width: Get.width,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                children: [
                  widget.iconSettingSwitchButton,
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                      width: Get.width * 0.4,
                      child: Text(
                        widget.nameSettingSwitchButton,
                        style: mediumBlueFont,
                        overflow: TextOverflow.ellipsis,
                      )),
                  const Spacer(),
                  Switch(
                    value: _value,
                    onChanged: (newValue) {
                      setState(() {
                        _value = newValue;
                      });

                      if (widget.onChanged != null) {
                        widget.onChanged!(newValue);
                      }
                    },
                    focusColor: babyZoneColor,
                    hoverColor: babyZoneColor,
                    activeColor: babyZoneColor,
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}

class SettingButton extends StatefulWidget {
  final void Function()? onClickSettingButton;
  final Icon iconSettingButton;
  final String nameSettingButton;

  const SettingButton(
      {super.key,
      this.onClickSettingButton,
      required this.iconSettingButton,
      required this.nameSettingButton});

  @override
  State<SettingButton> createState() => _SettingButtonState();
}

class _SettingButtonState extends State<SettingButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        MaterialButton(
          elevation: 0.0,
          splashColor: backGroundColor,
          onPressed: widget.onClickSettingButton,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                border: Border.all(color: babyZoneColor, width: 2)),
            width: Get.width,
            child: Column(
              children: [
                const SizedBox(
                  height: 11,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    children: [
                      widget.iconSettingButton,
                      const SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                          width: Get.width * 0.4,
                          child: Text(
                            widget.nameSettingButton,
                            style: mediumBlueFont,
                          )),
                      const Spacer(),
                      const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 26,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 11,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
