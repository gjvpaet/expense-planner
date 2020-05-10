import 'package:flutter/material.dart';

import './chart.dart';
import './transactionListContainer.dart';

import '../models/transaction.dart';

class PortraitPageBody extends StatelessWidget {
  final double appBarHeight;
  final List<Transaction> recentTransactions;
  final List<Transaction> txList;
  final Function deleteTx;

  const PortraitPageBody(
    this.appBarHeight,
    this.recentTransactions,
    this.txList,
    this.deleteTx,
  );

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Column(
      children: <Widget>[
        Container(
          child: Chart(
            recentTransactions,
          ),
          height:
              (mediaQuery.size.height - appBarHeight - mediaQuery.padding.top) *
                  0.3,
        ),
        TransactionListContainer(
          txList,
          deleteTx,
          appBarHeight,
        ),
      ],
    );
  }
}
