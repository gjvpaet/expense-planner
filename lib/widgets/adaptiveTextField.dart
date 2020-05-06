import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AdaptiveTextField extends StatelessWidget {
  final String label;
  final TextEditingController textController;
  final Function handler;
  final TextInputType keyboardType;

  AdaptiveTextField(
      this.label, this.textController, this.handler, this.keyboardType);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoTextField(
            placeholder: label,
            controller: textController,
            keyboardType: keyboardType,
            onSubmitted: (_) => handler(),
          )
        : TextField(
            decoration: InputDecoration(labelText: label),
            controller: textController,
            keyboardType: keyboardType,
            onSubmitted: (_) => handler(),
          );
  }
}
