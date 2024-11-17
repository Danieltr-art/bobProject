import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../components/styleText.dart';

SideTitles get days => SideTitles(
  showTitles: true,
  getTitlesWidget: (value, meta) {
    String text = '';
    switch(value.toInt()){
      case 0:
        text = 'Mon';
        break;

      case 1:
        text = 'Tue';
        break;

      case 2:
        text = 'Wed';
        break;

      case 3:
        text = 'Thu';
        break;

      case 4:
        text = 'Fri';
        break;

      case 5:
        text = 'Sat';
        break;

      case 6:
        text = 'Sun';
        break;
    }

    return styleText(val: text, size: 12, color: Colors.black);
  },
);