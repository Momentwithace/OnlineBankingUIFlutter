import 'package:flutter/material.dart';
import 'package:bank_online/contraints/color_constraints.dart';

class CardModel {
  late String cardHolderName;
  late String cardNumber;
  late String expDate;
  late String cvv;
  late Color cardColor;

  CardModel({
    required this.cardHolderName,
    required this.cardNumber,
    required this.expDate,
    required this.cardColor,
    required this.cvv,
  });
}

List<CardModel> myCards = [
  CardModel(
    cardHolderName: "Rollins Rowen",
    cardNumber: "**** **** **** 3421",
    expDate: "12/29",
    cardColor: kBackgroundColor,
    cvv: "**7",
  ),
  CardModel(
    cardHolderName: "Nina Simon",
    cardNumber: "**** **** **** 8798",
    expDate: "20/24",
    cardColor: kBackgroundColor,
    cvv: "**9",
  ),
];
