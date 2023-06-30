import 'package:bank_online/contraints/app_textstyle.dart';
import 'package:bank_online/contraints/color_constraints.dart';
import 'package:bank_online/data/card_data.dart';
import 'package:bank_online/widgets/my_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "My Cards",
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
            ),]
        ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: ListView.separated(
                physics: const ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return MyCard(
                    card: myCards[index],
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(width: 20,);
                },
                itemCount: myCards.length,
              ),
            ),

            const CircleAvatar(
              radius: 30,
              child: Icon(FontAwesomeIcons.plus, 
              color: kPrimaryColor, 
              size: 30,),
            ),
            const Text(
              "Add Card",
              style: AppTextStyle.LISTTILE_TITLE,
            ),      
          ],
        ),
     ) );
  }
}