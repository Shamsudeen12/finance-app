import 'package:flutter/material.dart';

import 'models.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({Key? key, required this.cardModel}) : super(key: key);

  final CreditCardModel cardModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: const EdgeInsets.all(40),
      decoration: BoxDecoration(
        color: cardModel.cardColor,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 100,
            height: 50,
            child: Stack(
              children: [
                Positioned(
                  left: 40,
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xFF9DA6AB),
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: const Color(0xFF181818),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Text(
                'CARD NUMBER',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                cardModel.cardNumber,
                style: Theme.of(context).textTheme.headline3,
              ),
            ],
          ),
          Text(
            cardModel.name,
            style: Theme.of(context).textTheme.headline3,
          )
        ],
      ),
    );
  }
}
