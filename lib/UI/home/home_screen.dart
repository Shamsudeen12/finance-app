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