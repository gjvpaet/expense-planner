import 'package:flutter/material.dart';

import './transactionList.dart';

import '../models/transaction.dart';

class TransactionListContainer extends StatelessWidget {
  final List<Transaction> txList;
  final Function deleteTx;
  final double appBarHeight;

  const TransactionListContainer(this.txList, this.deleteTx, this.appBarHeight);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final isLandscape = mediaQuery.orientation == Orientation.landscape;

    final txListHeightPct = isLandscape ? 0.83 : 0.7;

    return Container(
      height: (mediaQuery.size.height - appBarHeight - mediaQuery.padding.top) *
          txListHeightPct,
      child: TransactionList(
        txList,
        deleteTx,
      ),
    );
  }
}
