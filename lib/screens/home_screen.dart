import 'package:bank_online/contraints/app_textstyle.dart';
import 'package:bank_online/contraints/color_constraints.dart';
import 'package:bank_online/data/card_data.dart';
import 'package:bank_online/data/transaction_data.dart';
import 'package:bank_online/widgets/my_card.dart';
import 'package:bank_online/widgets/transaction.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Bank Online",
          style: TextStyle(
            fontFamily: "Poppins",
            color: kPrimaryColor
          ),
          ),
        leading:  Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 16.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: Image.asset("assets/images/avatar4.png"),
              ),
            ),
          ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.bell,
              color: kPrimaryColor,
              size: 27,
              ),
            ),
        ]
    ),
    body: SingleChildScrollView(
      physics: const ClampingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              child: ListView.separated(
                physics: const ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => 
                const SizedBox(width: 10,), 
                itemCount: myCards.length,
                 itemBuilder: (BuildContext context, int index) { 
                  return MyCard(card: myCards[index]);
                  },), 
                ),
            const SizedBox(height: 20,),
            const Text(
              "Transactions",
              style: AppTextStyle.LISTTILE_TITLE,
              ),
            const SizedBox(height: 10,),
            ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => 
                const SizedBox(width: 10,), 
                itemCount: myTransaction.length,
                 itemBuilder: (BuildContext context, int index) { 
                  return TransactionCard(transactionModel: myTransaction[index],);
                  },), 
          ],
        ),
      ),
    ),
    );    
  }
}