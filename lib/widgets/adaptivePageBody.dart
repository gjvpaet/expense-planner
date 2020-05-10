import 'package:flutter/material.dart';

import './landscapePageBody.dart';
import './portraitPageBody.dart';

import '../models/transaction.dart';

class AdaptivePageBody extends StatelessWidget {
  final double appBarHeight;
  final List<Transaction> recentTransactions;
  final List<Transaction> txList;
  final Function deleteTx;

  const AdaptivePageBody(
    this.appBarHeight,
    this.recentTransactions,
    this.txList,
    this.deleteTx,
  );

  @override
  Widget build(BuildContext context) {
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return Column(
      children: <Widget>[
        if (isLandscape)
          LandscapePageBody(
            appBarHeight,
            recentTransactions,
            txList,
            deleteTx,
          ),
        if (!isLandscape)
          PortraitPageBody(
            appBarHeight,
            recentTransactions,
            txList,
            deleteTx,
          ),
      ],
      crossAxisAlignment: CrossAxisAlignment.stretch,
    );
  }
}
