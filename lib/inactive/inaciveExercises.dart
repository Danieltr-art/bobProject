import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_project/components/exercisesMenu.dart';

class inactiveExercises extends StatefulWidget {
  const inactiveExercises({super.key});

  @override
  State<inactiveExercises> createState() => _inactiveExercisesState();
}

class _inactiveExercisesState extends State<inactiveExercises> {
  @override
  Widget build(BuildContext context) {
      return const exercisesMenu(n1: 2, n2: 2, n3: 2, n4: 2, n5: 2, d1: 8, d2: 10, d3: 12, d4: 7, d5: 10, val1: "chestExercises", val2: "val2", val3: "val3", val4: "val4", val5: "val5");
  }
}
