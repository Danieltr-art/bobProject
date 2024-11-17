import 'package:flutter/material.dart';
import 'package:the_project/components/styleText.dart';

class cotchStyle extends StatelessWidget {
  const cotchStyle({super.key, required this.image, required this.name});

  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey[900]
      ),
      child: Row(
        children: [
          Image(image: AssetImage(image),fit: BoxFit.fill, width: 150,),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  styleText(val: name, size: 20, color: Colors.yellowAccent),
                  Container(child: const styleText(val: "Friendly, motivating, and laid-back; here to help you reach your fitness goals with a relaxed", size: 10, color: Colors.white),),
                  MaterialButton(
                    color: Colors.yellowAccent,
                    padding: const EdgeInsets.all(20),
                    onPressed: (){},
                    child: const styleText(val: "Hire", size: 15, color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
