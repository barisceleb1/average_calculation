import 'package:average_calculation/constants/app_constants.dart';
import 'package:average_calculation/helper/data_helper.dart';
import 'package:average_calculation/model/ders.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CourseList extends StatefulWidget {
  final Function onElement;

  const CourseList({required this.onElement, Key? key}) : super(key: key);

  @override
  State<CourseList> createState() => _CourseListState();
}

class _CourseListState extends State<CourseList> {

  @override
  Widget build(BuildContext context) {
    List<Lesson> allLessons = DataHelper.allLessonstobeAdded;

    return allLessons.length > 0
        ? ListView.builder(
        itemCount: allLessons.length,
        itemBuilder: (context, index) {
          var multiplication=  (DataHelper.allLessonstobeAdded[index].letterValue *
              DataHelper.allLessonstobeAdded[index].creditValue);
          var emoji = allLessons[index].letterValue;
          return Dismissible(
            key: UniqueKey(),
            direction: DismissDirection.startToEnd,
            onDismissed: (a) {
              widget.onElement(index);
            },
            child: Card(
              elevation: 7,
              shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(30))
              ),
              color: Constants.primaryColor,
              child: ListTile(
                title: Text(allLessons[index].name,style: TextStyle(color: Colors.white),),
                leading: CircleAvatar(
                  backgroundColor: Colors.indigo,

                  child: Text(
                    (emoji <= 4 && emoji >3)? "🤩": (emoji <=3 && emoji >2)?"🙂": (emoji<=2 && emoji >1)? "😐": (emoji== 1 )? "☹️":(emoji<1)? "😭":"",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                subtitle: Text(
                  'Kredi: ${(allLessons[index].creditValue).toStringAsFixed(0)}, Harf Degeri: ${allLessons[index].letterValue}, Not Degeri: ${multiplication}',style: TextStyle(
                    color: Colors.white
                ),),
              ),
            ),
          );
        })
        : Container(
        child: Center(
          child: Text(
            'Lütfen Ders Seçiniz !',
            style: Constants.titleStyle2,
          ),
        ));
  }
}
