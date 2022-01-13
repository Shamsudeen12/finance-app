import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TransactionModel {
  final String transactionName;
  final double transactionPrice;
  final IconData icon;
  final String dateTime;

  TransactionModel({
    required this.transactionName,
    required this.transactionPrice,
    required this.icon,
    required this.dateTime,
  });
}

List<TransactionModel> transactions = [
  TransactionModel(
    transactionName: 'Spotify',
    transactionPrice: 15.00,
    icon: FontAwesomeIcons.spotify,
    dateTime: 'May 20, 3:41pm',
  ),
  TransactionModel(
    transactionName: 'Amazon',
    transactionPrice: 150.00,
    icon: FontAwesomeIcons.amazon,
    dateTime: 'May 20, 3:41pm',
  ),
  TransactionModel(
    transactionName: 'Apple',
    transactionPrice: 200.00,
    icon: FontAwesomeIcons.apple,
    dateTime: 'May 20, 3:41pm',
  ),
  TransactionModel(
    transactionName: 'Pied Piper',
    transactionPrice: 5.00,
    icon: FontAwesomeIcons.piedPiper,
    dateTime: 'May 20, 3:41pm',
  ),
  TransactionModel(
    transactionName: 'Reddit',
    transactionPrice: 100.00,
    icon: FontAwesomeIcons.reddit,
    dateTime: 'May 20, 3:41pm',
  ),
  TransactionModel(
    transactionName: 'Youtube',
    transactionPrice: 1000.00,
    icon: FontAwesomeIcons.youtube,
    dateTime: 'May 20, 3:41pm',
  ),
  TransactionModel(
    transactionName: 'Twitch',
    transactionPrice: 500.00,
    icon: FontAwesomeIcons.twitch,
    dateTime: 'May 20, 3:41pm',
  ),
];
