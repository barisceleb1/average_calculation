import 'dart:core';
import 'package:average_calculation/model/ders.dart';
import 'package:flutter/material.dart';

class DataHelper {
  static List<String> _allLessons() {
    return ['AA', 'BA', 'BB', 'CB', 'CC', 'DC', 'DD', 'FD', 'FF'];
  }

  static double calculateAverage() {
    double totalCredit = 0;
    double totalNote = 0;
    allLessonstobeAdded.forEach((element) {
      totalNote = totalNote + (element.creditValue * element.letterValue);
      totalCredit += element.creditValue;
    });
    return totalNote / totalCredit;
  }

  static List<Lesson> allLessonstobeAdded = [];

  static addlesson(Lesson lesson) {
    allLessonstobeAdded.add(lesson);
  }

  static double _convertLettertoNote(String letter) {
    switch (letter) {
      case 'AA':
        return 4;
      case 'BA':
        return 3.5;
      case 'BB':
        return 3.0;
      case 'CB':
        return 2.5;
      case 'CC':
        return 2.0;
      case 'DC':
        return 1.5;
      case 'DD':
        return 1.0;
      case 'FD':
        return 0.5;
      case 'FF':
        return 0;
      default:
        return 1;
    }
  }

  static List<DropdownMenuItem<double>> allLessons() {
    return _allLessons()
        .map(
          (e) => DropdownMenuItem(
        child: Text(e),
        value: _convertLettertoNote(e),
      ),
    )
        .toList();
  }
  static List<int> allCredit() {
    return List.generate(10, (index) => index + 1).toList();
  }

  static List<DropdownMenuItem<double>> courseCredits() {
    return allCredit()
        .map(
          (e) => DropdownMenuItem(
        child: Text(e.toString()),
        value: e.toDouble(),
      ),
    )
        .toList();
  }
}
