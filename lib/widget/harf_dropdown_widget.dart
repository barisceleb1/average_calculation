import 'package:average_calculation/constants/app_constants.dart';
import 'package:average_calculation/helper/data_helper.dart';
import 'package:flutter/material.dart';

class LetterWidget extends StatefulWidget {
  final Function onLetterSelected;
  const LetterWidget({required this.onLetterSelected, Key? key})
      : super(key: key);

  @override
  _LetterWidgetState createState() => _LetterWidgetState();
}

class _LetterWidgetState extends State<LetterWidget> {
  double selectedLetterValue = 4;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: Constants.borderRadius,
        color: Constants.primaryColor.shade200.withOpacity(0.3),
      ),
      child: DropdownButton<double>(
        value: selectedLetterValue,
        onChanged: (deger) {
          setState(() {
            selectedLetterValue = deger!;
            widget.onLetterSelected(selectedLetterValue);
          });
        },
        underline: Container(),
        items: DataHelper.allLessons(),
        /*[
            DropdownMenuItem(child: Text('AA'), value: 4),
            DropdownMenuItem(child: Text('BA'), value: 3.5),
            DropdownMenuItem(child: Text('BB'), value: 3),
            DropdownMenuItem(child: Text('CB'), value: 2.5),
            DropdownMenuItem(child: Text('CC'), value: 2),
            DropdownMenuItem(child: Text('CD'), value: 1.5),
            DropdownMenuItem(child: Text('DD'), value: 1),
            DropdownMenuItem(child: Text('FD'), value: 0.5),
            DropdownMenuItem(child: Text('FF'), value: 0),
          ],*/
      ),
    );
  }
}
