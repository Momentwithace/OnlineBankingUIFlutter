import 'package:bank_online/widgets/my_card.dart';
import 'package:flutter/material.dart';




void main(){
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Online Banking With Flutter",
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: "Poppins",
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0
        ),
        primarySwatch: Colors.blue
      ),
      // home: MyCard(),
    );
  }
}