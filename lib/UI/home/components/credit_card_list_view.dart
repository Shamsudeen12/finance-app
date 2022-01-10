import 'package:flutter/material.dart';

import 'home_components.dart';

class CreditCardsListView extends StatelessWidget {
  const CreditCardsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 24),
      height: 350,
      child: ListView.separated(
        primary: false,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        itemCount: creditCards.length,
        separatorBuilder: (context, index) => const SizedBox(width: 30),
        itemBuilder: (context, index) => CreditCard(
          cardModel: creditCards[index],
        ),
      ),
    );
  }
}
