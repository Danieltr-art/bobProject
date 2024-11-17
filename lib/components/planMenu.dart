import 'package:flutter/material.dart';
import 'package:the_project/components/styleText.dart';

class planMenu extends StatelessWidget {
  const planMenu({super.key, required this.image, required this.days, required this.month, required this.title, required this.onTap});

  final String image;
  final String title;
  final int days;
  final double month;
  final String onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(onTap);
      },
      child: Container(
          decoration: BoxDecoration(
              color: Colors.grey[900],
              borderRadius: BorderRadius.circular(30)
          ),
          child: Column(
            children: [
              Image(image: AssetImage(image)),
              Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    styleText(val: title, size: 20, color: Colors.white),
                    const SizedBox(height: 7,),
                    styleText(val: "$days days/week,   $month months", size: 15, color: Colors.yellowAccent)
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }
}
