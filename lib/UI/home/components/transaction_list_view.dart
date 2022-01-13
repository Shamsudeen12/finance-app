import 'package:flutter/material.dart';

import 'home_components.dart';

class TransactionsListView extends StatelessWidget {
  const TransactionsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      child: ListView.separated(
        primary: false,
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: transactions.length,
        separatorBuilder: (context, index) => const SizedBox(height: 50),
        itemBuilder: (context, index) => TransactionCard(
          transactionModel: transactions[index],
        ),
      ),
    );
  }
}
