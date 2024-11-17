import 'package:flutter/material.dart';
import 'package:the_project/components/exerciseCard.dart';
import '../../components/styleText.dart';

class chestExercises extends StatefulWidget {
  const chestExercises({super.key});

  @override
  State<chestExercises> createState() => _chestExercisesState();
}

class _chestExercisesState extends State<chestExercises> {
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
        child: const Column(
          children: [
            exerciseCard(image: "image/Inactive/dumbbell-bench-press-icon-64-Exercises.webp", title: "Dumbbell Bench Press Standards", subTitle: "Chest Training", onTap: 'inactiveChest1',),
            exerciseCard(image: "image/Inactive/push-ups-icon-64.webp", title: "Push Ups", subTitle: "Chest Training", onTap: '',)
          ],
        ),
        
      ),
    );
  }
}
