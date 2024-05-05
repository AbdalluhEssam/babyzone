import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';



class CustomFormAddress extends StatelessWidget {
  final String hinttext;
  final String label;
  final IconData iconData;
  final TextEditingController mycontroller;
  final String? Function(String?) valid;
  final bool isNamber;
  final bool? obscureText;
  final void Function()? onTap;

  const CustomFormAddress({
    Key? key,
    required this.hinttext,
    required this.label,
    required this.iconData,
    required this.mycontroller,
    required this.valid,
    required this.isNamber,
    this.obscureText,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: TextFormField(
        cursorColor: AppColor.primaryColor,
        style: const TextStyle(color: AppColor.primaryColor),
        keyboardType: isNamber
            ? const TextInputType.numberWithOptions(decimal: true)
            : TextInputType.text,
        validator: valid,
        controller: mycontroller,
        obscureText: obscureText == null || obscureText == false ? false : true,
        decoration: InputDecoration(
          fillColor: AppColor.primaryColor,
          focusColor: AppColor.primaryColor,
          contentPadding:
          const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
          labelStyle: const TextStyle(
              color: AppColor.primaryColor,
              fontSize: 14,
              fontWeight: FontWeight.bold),
          hintStyle: const TextStyle(
              color: AppColor.black,
              fontSize: 14,
              fontWeight: FontWeight.bold),
          border: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColor.primaryColor, width: 1),
              borderRadius: BorderRadius.all(Radius.circular(30))),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColor.primaryColor, width: 1),
              borderRadius: BorderRadius.all(Radius.circular(30))),
          disabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColor.primaryColor, width: 1),
              borderRadius: BorderRadius.all(Radius.circular(30))),
          hintText: hinttext,
          helperStyle: const TextStyle(fontSize: 14),
          floatingLabelBehavior: FloatingLabelBehavior.always,

          label: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(label)),
          suffixIcon: InkWell(onTap: onTap, child: Icon(iconData,color: AppColor.primaryColor,)),
        ),
      ),
    );
  }
}
