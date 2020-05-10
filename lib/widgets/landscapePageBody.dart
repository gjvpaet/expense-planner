import 'package:flutter/material.dart';

import './chart.dart';
import './transactionListContainer.dart';

import '../models/transaction.dart';

class LandscapePageBody extends StatefulWidget {
  final double appBarHeight;
  final List<Transaction> recentTransactions;
  final List<Transaction> txList;
  final Function deleteTx;

  const LandscapePageBody(
    this.appBarHeight,
    this.recentTransactions,
    this.txList,
    this.deleteTx,
  );

  @override
  _LandscapePageBodyState createState() => _LandscapePageBodyState();
}

class _LandscapePageBodyState extends State<LandscapePageBody> {
  bool _showChart = false;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Text(
              'Show Chart',
              style: Theme.of(context).textTheme.headline6,
            ),
            Switch.adaptive(
              activeColor: Theme.of(context).accentColor,
              value: _showChart,
              onChanged: (val) {
                setState(() {
                  _showChart = val;
                });
              },
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        _showChart
            ? Container(
                child: Chart(
                  widget.recentTransactions,
                ),
                height: (mediaQuery.size.height -
                        widget.appBarHeight -
                        mediaQuery.padding.top) *
                    0.7,
              )
            : TransactionListContainer(
                widget.txList,
                widget.deleteTx,
                widget.appBarHeight,
              )
      ],
    );
  }
}
