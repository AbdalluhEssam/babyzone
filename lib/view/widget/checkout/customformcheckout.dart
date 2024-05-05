import 'package:flutter/material.dart';

class CustomFormCheckOut extends StatelessWidget {
  final String hintText;
  final String label;
  final bool isNamber;
  final int? maxL;
  final IconData iconData;
  final TextEditingController mycontroller;
  final String? Function(String?) valid;
  final void Function()? onTap;

  const CustomFormCheckOut({
    Key? key,
    required this.hintText,
    required this.label,
    required this.iconData,
    required this.mycontroller,
    required this.valid,
    this.onTap, required this.isNamber, this.maxL,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        keyboardType: isNamber
            ? const TextInputType.numberWithOptions(decimal: true)
            : TextInputType.text,
        validator: valid,
        controller: mycontroller,
        maxLength: maxL,

        decoration: InputDecoration(
          hintText: hintText,
          helperStyle: const TextStyle(fontSize: 14),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding:
          const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          label: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(label)),
          suffixIcon: InkWell(onTap: onTap, child: Icon(iconData)),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
        ),
      ),
    );
  }
}
