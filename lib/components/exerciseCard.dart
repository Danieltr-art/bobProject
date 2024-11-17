import 'package:flutter/material.dart';
import 'package:the_project/components/styleText.dart';

class exerciseCard extends StatelessWidget {
  const exerciseCard({super.key, required this.image, required this.title, required this.subTitle, required this.onTap});

  final String image;
  final String title;
  final String subTitle;
  final String onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[900],
      child: InkWell(
        onTap: (){
          Navigator.of(context).pushNamed(onTap);
        },
        child: ListTile(
          leading: Image(image: AssetImage(image),),
          title: styleText(val: title, size: 20, color: Colors.white),
          subtitle: styleText(val: subTitle, size: 10, color: Colors.yellowAccent),
        ),
      ),
    );
  }
}
