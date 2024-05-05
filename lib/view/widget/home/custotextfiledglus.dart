import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CustomFormGlus extends StatelessWidget {
  final String hinttext;
  final String label;
  final IconData iconData;
  final TextEditingController mycontroller;
  final String? Function(String?) valid;
  final bool? obscureText;
  final bool? number;
  final void Function()? onTap;

  const CustomFormGlus({
    Key? key,
    required this.hinttext,
    required this.label,
    required this.iconData,
    required this.mycontroller,
    required this.valid,
    this.obscureText,
    this.onTap, this.number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType:number == false? TextInputType.multiline: TextInputType.number ,
      validator: valid,
      controller: mycontroller,
      maxLines: 200,
      minLines: 1,
      obscureText: obscureText == null || obscureText == false ? false : true,
      decoration: InputDecoration(
        hintText: hinttext,
        helperStyle: const TextStyle(fontSize: 14),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding:
        const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
        label: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(label)),
        suffixIcon: InkWell(onTap: onTap, child: Icon(iconData)),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
      ),
    );
  }
}
