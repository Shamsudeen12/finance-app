import 'package:finance/utils/utils.dart';
import 'package:flutter/material.dart';

import 'home_components.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({Key? key, required this.transactionModel})
      : super(key: key);

  final TransactionModel transactionModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          transactionModel.icon,
          color: Colors.white,
          size: 30,
        ),
        horizontalHeight30,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              transactionModel.transactionName,
              style: Theme.of(context).textTheme.headline4,
            ),
            verticalHeight5,
            Text(
              transactionModel.dateTime,
              style: Theme.of(context).textTheme.headline5,
            ),
          ],
        ),
        const Spacer(),
        Text(
          "-\$${transactionModel.transactionPrice}",
          style: Theme.of(context).textTheme.headline6,
        ),
      ],
    );
  }
}
