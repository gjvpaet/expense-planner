import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import './adaptiveFloatingActionButton.dart';

class AdaptiveScaffold extends StatelessWidget {
  final Widget pageBody;
  final PreferredSizeWidget appBar;
  final Function addNewTx;

  const AdaptiveScaffold(this.pageBody, this.appBar, this.addNewTx);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoPageScaffold(
            child: pageBody,
            navigationBar: appBar,
          )
        : Scaffold(
            appBar: appBar,
            body: pageBody,
            floatingActionButton: AdaptiveFloatingActionButton(
              this.addNewTx,
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,
          );
  }
}
