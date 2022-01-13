import 'package:flutter/material.dart';

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
    cardNumber: '0123 4589',
    cardColor: const Color(0xFFD0EAF9),
  ),
  CreditCardModel(
    name: 'Muna',
    cardNumber: '4855 7829',
    cardColor: const Color(0xFFC9B6E9),
  ),
  CreditCardModel(
    name: 'Samuel',
    cardNumber: '6048 7192',
    cardColor: const Color(0xFF827E9C),
  ),
];
