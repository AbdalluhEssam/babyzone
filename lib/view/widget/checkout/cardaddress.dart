import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';
class CardAddressCheckOut extends StatelessWidget {
  final String title;
  final String body;
  final bool isActive;
  const CardAddressCheckOut({Key? key, required this.title, required this.body, required this.isActive}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)),
      color:isActive ==true? AppColor.primaryColor.withOpacity(0.5) : AppColor.primaryColor.withOpacity(0.1) ,
      child:  ListTile(
        title: Text(
          title,
          style: TextStyle(
              fontSize: 16,
              color:isActive ==true? AppColor.backgroundColor:AppColor.primaryColor,
              fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          body,
          style: TextStyle(
            // fontSize: 16,
              color: isActive ==true? AppColor.backgroundColor:AppColor.primaryColor,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
