import 'dart:io';

import 'package:flutter/material.dart';

class AdaptiveFloatingActionButton extends StatelessWidget {
  final Function addNewTx;

  const AdaptiveFloatingActionButton(this.addNewTx);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? Container()
        : FloatingActionButton(
            child: Icon(
              Icons.add,
            ),
            onPressed: () => addNewTx(context),
          );
  }
}
