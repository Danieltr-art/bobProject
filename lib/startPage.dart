import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:the_project/components/styleCard.dart';
import 'package:the_project/components/styleText.dart';
import 'barChartFiles/barGroups.dart';
import 'barChartFiles/sideTitles.dart';

class startPage extends StatefulWidget {
  const startPage({super.key});

  @override
  State<startPage> createState() => _startPageState();
}

class _startPageState extends State<startPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
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
          if(val == 0){
            Navigator.of(context).pushNamed("plansPage");
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
          children: [
           Container(
             padding: const EdgeInsets.all(10),
             decoration: BoxDecoration(
                 color: Colors.yellowAccent,
                 borderRadius: BorderRadius.circular(20)
             ),
             child: Column(
               children: [
                 const Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Icon(Icons.bar_chart, color: Colors.black, size: 20,),
                     styleText(val: "Activities", size: 20, color: Colors.black),
                   ],
                 ),
                 Container(
                   padding: const EdgeInsets.all(10),
                   height: 200,
                   width: double.infinity,
                   child: BarChart(
                       BarChartData(
                         barGroups: barGroups,
                         maxY: 20,
                         titlesData: FlTitlesData(
                           show: true,
                           bottomTitles: AxisTitles(
                             sideTitles: days,
                           ),
                           topTitles: const AxisTitles(
                             sideTitles: SideTitles(showTitles: false), // Hide top numbers
                           ),
                           leftTitles: const AxisTitles(
                             sideTitles: SideTitles(showTitles: false), // Hide left numbers
                           ),
                           rightTitles: const AxisTitles(
                             sideTitles: SideTitles(showTitles: false), // Hide right numbers
                           ),
                         ),
                         gridData: const FlGridData(show: false), // Hide grid lines
                         backgroundColor: Colors.yellowAccent,
                         borderData: FlBorderData(show: false),
                         alignment: BarChartAlignment.spaceAround
                           ),
                         ),
                       ),
               ],
             ),
           ),
            const SizedBox(height: 15,),
            const styleText(val: "Popular Categories", size: 20, color: Colors.white),
            const SizedBox(height: 10,),
            
            const styleCard(name: "Leg Exercise", number: 2, duration: 10, image: "image/leg.png", onTap: "",),
            const styleCard(name: "Chest Exercise", number: 2, duration: 8, image: "image/chest.png", onTap: "",),
            const styleCard(name: "Arms Exercise", number: 2, duration: 7, image: "image/arm.png", onTap: "")
            ]
        ),
      ),

    );
  }
}
