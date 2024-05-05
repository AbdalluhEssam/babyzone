import 'package:flutter/material.dart';


AlertDialog buildAlertDialog(
    {required BuildContext context,
      required String text,
      required Widget content,
      required String textButton,
      required void Function() onPressed}) =>
    AlertDialog(
      alignment: Alignment.center,
      actionsAlignment: MainAxisAlignment.center,
      scrollable: true,
      title: Text(
        text,
      ),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          content,
        ],
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, 'الغاء'),
          child: const Text('الغاء'),
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(textButton),
        ),
      ],
    ) ;
