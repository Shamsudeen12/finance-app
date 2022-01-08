import 'package:finance/utils/utils.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      padding: padding16,
      child: ListView(
        // shrinkWrap: true,
        children: [
          Row(
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
          CreditCardsListView(),
          // ListView(),
        ],
      ),
    );
  }
}

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      padding: const EdgeInsets.all(4.5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: const Color(0xFFFFFFFF).withOpacity(.5),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class CreditCardsListView extends StatelessWidget {
  const CreditCardsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      itemCount: creditCards.length,
      separatorBuilder: (context, index) => const SizedBox(width: 16),
      itemBuilder: (context, index) => CreditCard(
        cardModel: creditCards[index],
      ),
    );
  }
}

class CreditCard extends StatelessWidget {
  const CreditCard({Key? key, required this.cardModel}) : super(key: key);

  final CreditCardModel cardModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 300,
      color: cardModel.cardColor,
      child: Column(
        children: [
          Image.asset(''),
          Expanded(
            child: Column(
              children: [
                const Text('CARD NUMBER'),
                Text(cardModel.cardNumber),
              ],
            ),
          ),
          Text(cardModel.name)
        ],
      ),
    );
  }
}

class CreditCardModel {
  final String name;
  final String cardNumber;
  final Color cardColor;

  CreditCardModel({
    required this.name,
    required this.cardNumber,
    required this.cardColor,
  });
}

List<CreditCardModel> creditCards = [
  CreditCardModel(
    name: 'Selwyn',
    cardNumber: '123 455 789',
    cardColor: const Color(0xFFD0EAF9),
  ),
  CreditCardModel(
    name: 'Selwyn',
    cardNumber: '123 455 789',
    cardColor: const Color(0xFFC9B6E9),
  ),
  CreditCardModel(
      name: 'Selwyn',
      cardNumber: '123 455 789',
      cardColor: const Color(0xFF827E9C)),
];
