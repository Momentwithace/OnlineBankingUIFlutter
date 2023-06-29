import 'package:bank_online/contraints/app_textstyle.dart';
import 'package:bank_online/data/card_data.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final CardModel card;
  
  const MyCard({super.key, required this.card});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: 200,
      width: 350,
      
      decoration: BoxDecoration(       
        color: card.cardColor,
        borderRadius: BorderRadius.circular(20), 
      ),

      child:  Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  
                  children: [
                    Text(
                      "CARD NAME",
                      style: AppTextStyle.MY_CARD_TITLE,
                      ),
                    Text(
                      card.cardHolderName,
                      style: AppTextStyle.MY_CARD_SUBTITLE,
                      ),
                  ],
                ),
                 Text(
                  card.cardNumber,
                  style: AppTextStyle.MY_CARD_SUBTITLE,
                  ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "EXP DATE",
                          style: AppTextStyle.MY_CARD_TITLE,
                        ),
                        Text(
                          card.expDate,
                          style: AppTextStyle.MY_CARD_SUBTITLE,
                        )
                      ],
                    )
                  ],
                )
              ],
          )
        ],
      ),
    );
  }
}