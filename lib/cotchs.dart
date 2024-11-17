import 'package:flutter/material.dart';
import 'package:the_project/components/cotchStyle.dart';
import 'package:the_project/components/styleText.dart';

class cotchs extends StatefulWidget {
  const cotchs({super.key});

  @override
  State<cotchs> createState() => _cotchsState();
}

class _cotchsState extends State<cotchs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
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
          if(val == 0){
            Navigator.of(context).pushNamed("plansPage");
          }
        },
      ),

      body: Container(
        color: Colors.black,
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            cotchStyle(image: "image/cotch1.jpeg", name: "Mohamad"),
            SizedBox(height: 15,),
            cotchStyle(image: "image/cotch2.jpeg", name: "Ali"),
          ],
        ),
      ),
    );
  }
}
