import 'package:flutter/material.dart';
import '../../../core/constant/color.dart';
import '../../Constant.dart';

class CustomFormAuth extends StatelessWidget {
  final String hinttext;
  final String label;
  final IconData iconData;
  final TextEditingController mycontroller;
  final String? Function(String?) valid;
  final bool isNamber;
  final bool? obscureText;
  final void Function()? onTap;
  final void Function()? onTapFull;
  final String? Function(String)? onChanged;

  final Color? color;

  const CustomFormAuth({
    Key? key,
    required this.hinttext,
    required this.label,
    required this.iconData,
    required this.mycontroller,
    required this.valid,
    required this.isNamber,
    this.obscureText,
    this.onTap,
    this.onTapFull,
    this.color, this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTapFull,
      keyboardType: isNamber
          ? const TextInputType.numberWithOptions(decimal: true)
          : TextInputType.text,
      onChanged: onChanged,
      validator: valid,
      controller: mycontroller,
      obscureText: obscureText == null || obscureText == false ? false : true,
      style: smallBlackFont,
      cursorColor: babyZoneColor,
      cursorOpacityAnimates: true,
      decoration: InputDecoration(
        prefixIcon: Icon(iconData),
        labelText: label,
        labelStyle: mediumBlackFont,
        contentPadding: const EdgeInsets.all(14),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: babyZoneColor),
            borderRadius: BorderRadius.all(
              Radius.circular(7),
            )),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: babyZoneColor),
            borderRadius: BorderRadius.all(
              Radius.circular(7),
            )),
      ),
    );
  }
}
class CustomFormAdd extends StatelessWidget {
  final String hinttext;
  final String label;
  final IconData iconData;
  final TextEditingController mycontroller;
  final String? Function(String?) valid;
  final bool isNamber;
  final bool? obscureText;
  final void Function()? onTap;
  final void Function()? onTapFull;
  final String? Function(String)? onChanged;

  final Color? color;

  const CustomFormAdd({
    Key? key,
    required this.hinttext,
    required this.label,
    required this.iconData,
    required this.mycontroller,
    required this.valid,
    required this.isNamber,
    this.obscureText,
    this.onTap,
    this.onTapFull,
    this.color, this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTapFull,
      style: const TextStyle(color: AppColor.primaryColor),
      keyboardType: isNamber
          ? const TextInputType.numberWithOptions(decimal: true)
          : TextInputType.text,
      onChanged: onChanged,
      validator: valid,
      controller: mycontroller,
      obscureText: obscureText == null || obscureText == false ? false : true,
      decoration: InputDecoration(
        fillColor: color ?? AppColor.secondColor.withOpacity(0.3),
        filled: true,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
        labelStyle: const TextStyle(
            color: AppColor.gray, fontSize: 14, fontWeight: FontWeight.bold),
        border: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.backgroundColor, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(50))),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.backgroundColor, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(50))),
        disabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.backgroundColor, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(50))),
        label: Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            child: Text(label)),
        prefixIcon: Icon(
          iconData,
          color: AppColor.black.withOpacity(0.5),
        ),
        suffixIcon: obscureText != null
            ? InkWell(onTap: onTap, child: Icon(iconData))
            : null,
      ),
    );
  }
}
