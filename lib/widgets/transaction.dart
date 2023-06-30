import 'package:bank_online/contraints/app_textstyle.dart';
import 'package:bank_online/data/transaction_data.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class TransactionCard extends StatelessWidget {
  final TransactionModel transactionModel;
  
  const TransactionCard({super.key, required this.transactionModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey)
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 60,
                width: 60,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: transactionModel.color
                ),
                child: Image.asset(transactionModel.avatar),
              ),
              const SizedBox(width: 10,),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Text(
                    transactionModel.name,
                    style: AppTextStyle.LISTTILE_TITLE,
                  ),
                  Text(
                    transactionModel.month,
                    style: AppTextStyle.LISTTILE_SUBTITLE,
                  )
                ],
              )
            ],
          ),
     Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              transactionModel.currentBalance,
              style: AppTextStyle.LISTTILE_TITLE,
            ),
        Row(
          children: [
            transactionModel.changePercentageIndicator == "Up"
            ?
            const Icon(
              FontAwesomeIcons.turnUp,
              size: 10,
              color: Colors.green,
            ):
            const Icon(
              FontAwesomeIcons.turnDown,
              size: 10,
              color: Colors.green ,
            ),
        const SizedBox(width: 5,),

        
        Text(
          transactionModel.chnagePercentage,
          style: AppTextStyle.LISTTILE_SUBTITLE,
        )
          ]
        )
          ],
        )
      ]),
    ]),
    );
  }
}