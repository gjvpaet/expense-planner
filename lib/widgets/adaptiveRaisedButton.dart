import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AdaptiveRaisedButton extends StatelessWidget {
  final String label;
  final Function handler;

  AdaptiveRaisedButton(this.label, this.handler);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            child: Text(
              label,
            ),
            color: Theme.of(context).primaryColor,
            onPressed: handler,
          )
        : RaisedButton(
            child: Text(
              label,
            ),
            color: Theme.of(context).primaryColor,
            textColor: Theme.of(context).textTheme.button.color,
            onPressed: handler,
          );
  }
}
