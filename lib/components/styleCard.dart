import 'package:flutter/material.dart';
import 'package:the_project/components/styleText.dart';

class styleCard extends StatelessWidget {
  const styleCard({super.key, required this.name, required this.number, required this.duration, required this.image, required this.onTap});
  final String name;
  final int number;
  final double duration;
  final String image;
  final String onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(onTap);
      },
      child: Card(
        color: Colors.grey[900],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    styleText(val: name, size: 20, color: Colors.white),
                    const SizedBox(height: 10,),
                    styleText(val: "$number exercise", size: 10, color: Colors.white),
                    const SizedBox(height: 10,),
                    Container(
                      padding: const EdgeInsets.all(7),
                      decoration: BoxDecoration(
                          color: Colors.yellowAccent,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: styleText(val: "$duration min", size: 15, color: Colors.white),
                    )
                  ],
                ),
              ),
              Expanded(child: Image(image: AssetImage(image),height: 100,))
            ],
          ),
      ),
    );
  }
}
