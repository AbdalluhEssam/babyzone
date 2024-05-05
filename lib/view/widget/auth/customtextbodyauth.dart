import 'package:flutter/material.dart';

class CustomTextBodyAuth extends StatelessWidget {
  final String textBody;
  const CustomTextBodyAuth({Key? key, required this.textBody})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text(
          textBody,
          style: Theme.of(context).textTheme.bodyText1,
          textAlign: TextAlign.center,
        ));
  }
}
