import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:the_project/components/styleText.dart';

class inactiveChest1 extends StatefulWidget {
  const inactiveChest1({super.key});

  @override
  State<inactiveChest1> createState() => _inactiveChest1State();
}

class _inactiveChest1State extends State<inactiveChest1> {

  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            Container(
              height: 400,
              width: double.infinity,
              child: PageView(
                controller: pageController,
                scrollDirection: Axis.horizontal,
                children: const [
                  Image(image: AssetImage("image/Inactive/inactive-chest-1.jpeg"),fit: BoxFit.cover,),
                  Image(image: AssetImage("image/Inactive/inactive-chest-1-2.jpeg"),fit: BoxFit.cover,),
                ],
              ),
            ),
            const SizedBox(height: 7,),
            SmoothPageIndicator(controller: pageController, count: 2, effect: const WormEffect(
              spacing: 10,
              activeDotColor: Colors.yellowAccent
            ),),
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const styleText(val: "Dumbbell Bench", size: 30, color: Colors.yellowAccent),
                  const SizedBox(height: 10,),
                  const Center(child: styleText(val: "15x3", size: 20, color: Colors.yellowAccent)),
                  const SizedBox(height: 10,),
                  Container(child: const styleText(val: "Dumbbell Bench Press works the chest with heavy weight without having the risk of getting trapped under a heavy barbell. It also allows you to work each arm separately to prevent imbalances.", size: 15, color: Colors.white)),
                  const SizedBox(height: 30,),
                  Center(
                    child: MaterialButton(
                      color: Colors.yellowAccent,
                        padding: const EdgeInsets.all(20),
                        onPressed: (){
                      Navigator.of(context).pop();
                    },
                      child: const styleText(val: "Back", size: 25, color: Colors.white),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
