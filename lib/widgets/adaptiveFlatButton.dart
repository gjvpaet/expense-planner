import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AdaptiveFlatButton extends StatelessWidget {
  final String text;
  final Function handler;

  AdaptiveFlatButton(this.text, this.handler);

  @override
  Widget build(BuildContext context) {
    final buttonChild = Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
      ),
    );

    return Platform.isIOS
        ? CupertinoButton(
            child: buttonChild,
            onPressed: handler,
          )
        : FlatButton(
            textColor: Theme.of(context).primaryColor,
            child: buttonChild,
            onPressed: handler,
          );
  }
}
