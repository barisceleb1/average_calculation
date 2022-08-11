import 'package:average_calculation/constants/app_constants.dart';
import 'package:flutter/material.dart';

class ShowAverage extends StatelessWidget {
  final double average;
  final int numberofLessons;

  const ShowAverage(
      {required this.average, required this.numberofLessons, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          numberofLessons > 0
              ? '$numberofLessons ders girildi'
              : 'Ders Seciniz',
          style: Constants.numbersofLessons,
        ),
        Text(
          average >= 0 ? '${average.toStringAsFixed(2)}' : '0.0',
          style: Constants.averageFigures,
        ),
        Text(
          'Ortalama',
          style: Constants.averageWriting,
        ),
      ],
    );
  }
}
