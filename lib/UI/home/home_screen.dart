import 'package:finance/utils/utils.dart';
import 'package:flutter/material.dart';

import 'components/home_components.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      padding: EdgeInsets.zero,
      child: ListView(
        primary: true,
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.menu_sharp,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
                const ProfileImage(
                  imagePath: 'images/cosmos_flower.jpg',
                )
              ],
            ),
          ),
          const CreditCardsListView(),
          verticalHeight65,
          const TransactionsListView(),
        ],
      ),
    );
  }
}

class TransactionsListView extends StatelessWidget {
  const TransactionsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      primary: false,
      // scrollDirection: Axis.vertical,
      // shrinkWrap: true,
      // physics: const NeverScrollableScrollPhysics(),
      itemCount: creditCards.length,
      separatorBuilder: (context, index) => const SizedBox(height: 50),
      itemBuilder: (context, index) => TransactionCard(
        transactionModel: transactions[index],
      ),
    );
  }
}

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
