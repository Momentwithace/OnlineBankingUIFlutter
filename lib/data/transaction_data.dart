import 'package:flutter/material.dart';



class TransactionModel{
  String name;
  String avatar;
  String currentBalance;
  String month;
  String changePercentageIndicator;  
  String chnagePercentage;
  var color;


  TransactionModel({
    required this.name,
    required this.avatar,
    required this.currentBalance,
    required this.month,
    required this.changePercentageIndicator,
    required this.chnagePercentage,
    required this.color

  });

}

List<TransactionModel> myTransaction = [
  TransactionModel(
    avatar: "assets/icons/avatar1.png",
    currentBalance: "#5600",
    chnagePercentage: "8.56%",
    changePercentageIndicator: "up",
    month: "June",
    name: "Ace Kuje", 
    color: Colors.green[100]
    ),

    TransactionModel(
    avatar: "assets/icons/avatar2.png",
    currentBalance: "#8960",
    chnagePercentage: "4.56%",
    changePercentageIndicator: "up",
    month: "Jan",
    name: "Dorcas May", 
    color: Colors.green[100]
    ),

    TransactionModel(
    avatar: "assets/icons3.png",
    currentBalance: "13700",
    chnagePercentage: "7.01%",
    changePercentageIndicator: "Down",
    month: "Oct",
    name: "Zed Klien", 
    color: Colors.green[100]
    ),

    TransactionModel(
    avatar: "assets/icons/avatar4.png",
    currentBalance: "#6200",
    chnagePercentage: "7.9%",
    changePercentageIndicator: "Down",
    month: "May",
    name: "Paul Paul", 
    color: Colors.green[100]
    ),

];