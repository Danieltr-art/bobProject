import 'package:flutter/material.dart';
import 'package:the_project/components/styleCard.dart';
import 'package:the_project/components/styleText.dart';

class exercisesMenu extends StatelessWidget {
  const exercisesMenu({super.key, required this.n1, required this.n2, required this.n3, required this.n4, required this.n5, required this.d1, required this.d2, required this.d3, required this.d4, required this.d5, required this.val1, required this.val2, required this.val3, required this.val4, required this.val5});

  final int n1;
  final int n2;
  final int n3;
  final int n4;
  final int n5;

  final double d1;
  final double d2;
  final double d3;
  final double d4;
  final double d5;

  final String val1;
  final String val2;
  final String val3;
  final String val4;
  final String val5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        iconTheme: const IconThemeData(color: Colors.yellowAccent),
        title: const Center(child: styleText(val: "Inactive Exercises", size: 20, color: Colors.yellowAccent)),
      ),
      body: Container(
        color: Colors.black,
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            styleCard(name: "Chest Exercise", number: n1, duration: d1, image: "image/chest.png", onTap: val1,),
            styleCard(name: "Back Exercise", number: n2, duration: d2, image: "image/back.png", onTap: val2,),
            styleCard(name: "Shoulder Exercise", number: n3, duration: d3, image: "image/Shoulder.png", onTap: val3,),
            styleCard(name: "Arms Exercise", number: n4, duration: d4, image: "image/arm.png", onTap: val4),
            styleCard(name: "Leg Exercise", number: n5, duration: d5, image: "image/leg.png", onTap: val5,),
          ],
        ),
      ),
    );
  }
}