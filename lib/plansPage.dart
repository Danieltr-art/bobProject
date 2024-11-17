import 'package:flutter/material.dart';
import 'package:the_project/components/planMenu.dart';

class plansPage extends StatefulWidget {
  const plansPage({super.key});

  @override
  State<plansPage> createState() => _plansPageState();
}

class _plansPageState extends State<plansPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        backgroundColor: Colors.grey[900],
        selectedItemColor: Colors.yellowAccent,
        unselectedItemColor: Colors.grey[400],
        iconSize: 40,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.directions_run_rounded),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.home),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: ""),
        ],
        onTap: (val){
          if(val == 1){
            Navigator.of(context).pushNamed("startPage");
          }
          else if(val == 2){
            Navigator.of(context).pushNamed("cotchs");
          }
        },
      ),

    body: Container(
      color: Colors.black,
      padding: const EdgeInsets.all(20),
        child: ListView(
          children: const [
            planMenu(image: "image/g1.jpg", days: 5, month: 3, title: "Inactive Plan", onTap: "inactiveExercises",),
            SizedBox(height: 10,),
            planMenu(image: "image/g2.jpg", days: 4, month: 3, title: "Beginner Plan", onTap: ""),
            SizedBox(height: 10,),
            planMenu(image: "image/g3.jpg", days: 4, month: 4, title: "Intermediate Plan", onTap: "",),
            SizedBox(height: 10,),
            planMenu(image: "image/g4.jpg", days: 3, month: 2, title: "Professional Plan", onTap: "")
          ],
        )
      ),
    );
  }
}
