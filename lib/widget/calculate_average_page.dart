import 'dart:io';
import 'package:average_calculation/constants/app_constants.dart';
import 'package:average_calculation/helper/data_helper.dart';
import 'package:average_calculation/helper/data_table.dart';
import 'package:average_calculation/helper/type_ahead.dart';
import 'package:average_calculation/model/advices.dart';
import 'package:average_calculation/model/ders.dart';
import 'package:average_calculation/widget/advice_list.dart';
import 'package:average_calculation/widget/course_list.dart';
import 'package:average_calculation/widget/credit_dropdown_widget.dart';
import 'package:average_calculation/widget/lessons_page_popup.dart';
import 'package:average_calculation/widget/show_average.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'advice_item.dart';
import 'harf_dropdown_widget.dart';
import 'news_page_popup.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';





class CalculateAveragePage extends StatefulWidget {
  const CalculateAveragePage({Key? key}) : super(key: key);

  @override
  CalculateAveragePageState createState() => CalculateAveragePageState();
}

class CalculateAveragePageState extends State<CalculateAveragePage> {
  var formKey = GlobalKey<FormState>();
  final TextEditingController _textEditingController= TextEditingController();
  double selectedLetterValue = 4;
  double selectedCreditValue = 1;
  String enteredLessonName = '';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Constants.primaryColor,
        centerTitle: true,
        actions: [
          Theme(
            data: Theme.of(context).copyWith(
              dividerColor: Colors.white,
              iconTheme: IconThemeData(color: Colors.white),
              textTheme: TextTheme().apply(bodyColor: Colors.white),
            ),
            child: PopupMenuButton<int>(
              color: Constants.primaryColor,
              onSelected: (item) => onSelected(context, item),
              itemBuilder: (BuildContext context) => [
                PopupMenuItem(
                  value: 0,
                  child: Row(
                    children: [ Icon(EvaIcons.bookOpen),
                      Text(" Dersler"),
                    ],
                  ),
                ),
                PopupMenuItem(
                    value: 1,
                    child:Row(children: [
                      Icon(
                          Icons.school
                      ),Text(' ZBEÜ'),
                    ])
                ),
                PopupMenuItem(
                  value: 2,
                  child: Row(
                    children: [ Icon(EvaIcons.checkmarkSquare2,),
                      Text(" Tavsiyeler"),
                    ],

                  ),
                ),
                PopupMenuDivider(),
                PopupMenuItem(
                  value: 3,
                  child: Row(children: [
                    Icon(
                      Icons.logout,
                    ),
                    Text(" Çıkış"),


                  ]),
                ),


              ],
            ),
          ),
        ],
        title: Center(
          child: Text(
            Constants.titleText,
            style: Constants.titleStyle,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: _buildForm(),
              ),
              Expanded(
                  flex: 1,
                  child: ShowAverage(
                      average: DataHelper.calculateAverage(),
                      numberofLessons: DataHelper.allLessonstobeAdded.length))
            ],
          ),
          Expanded(
            child: CourseList(
              onElement: (index) {
                DataHelper.allLessonstobeAdded.removeAt(index);
                setState(() {});
                print("Eleman Çıkarıldı index $index");
              },
            ),
          ),
        ],
      ),
    );
  }

  _buildForm() {
    return Form(
      key: formKey,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 7, left: 5),
            child: _buildTypeAheadFormField(),            // _buildTextFormField(), yazılmıştı önceden güncellendi.
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                  padding: Constants.horizontalPadding,
                  child: LetterWidget(onLetterSelected: (letter) {
                    selectedLetterValue = letter;
                  }),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: Constants.horizontalPadding,
                  child: CreditWidget(
                    onCreditSelected: (credit) {
                      selectedCreditValue= credit;
                    },
                  ),
                ),
              ),
              IconButton(
                onPressed: _addLessonandCalculateAverage,
                icon: Icon(Icons.add_circle_outline,size: 38,),
              ),
            ],
          )
        ],
      ),
    );
  }

  _buildTypeAheadFormField() {
    return TypeAheadFormField(
      suggestionsCallback: (pattern)=> ders.lessons_list.where((item) => item.toLowerCase().contains(pattern.toLowerCase()),),
      itemBuilder: (_,String item)=> ListTile(title: Text(item),),
      onSuggestionSelected: (String val){
        this._textEditingController.text=val;
        print(val);
      },
      getImmediateSuggestions: true,
      hideSuggestionsOnKeyboardHide: false,
      hideOnEmpty: false,
      noItemsFoundBuilder: (context)=> Padding(padding: const EdgeInsets.all(8.0),
        child: Text("Ders Bulunamadı"),),

      onSaved: (deger) {
        setState(() {
          enteredLessonName = deger!;
        });
      },
      validator: (s) {
        if (s!.length <= 0)
          return 'Lütfen Ders Giriniz!';
        else
          return null;
      },
      textFieldConfiguration: TextFieldConfiguration(
        decoration: InputDecoration(
            hintText: 'Ders',
            border: OutlineInputBorder(borderRadius: Constants.borderRadius),
            filled: true,
            fillColor: Constants.primaryColor.shade100.withOpacity(0.5)),
        controller:this._textEditingController,
      ),

    );
  }

  void _addLessonandCalculateAverage() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      var lessontobeAdded = Lesson(
        name: enteredLessonName,
        letterValue: selectedLetterValue,
        creditValue: selectedCreditValue,

      );

      DataHelper.addlesson(lessontobeAdded);
      print(DataHelper.allLessonstobeAdded);
      setState(() {});
    }
  }

//appbar kısmı
  void onSelected(BuildContext context, int item) {
    switch (item) {
      case 0:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => LessonsPage()),
        );
        break;
      case 1:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) =>VideoPagePopup(),),
        );
        break;
      case 2:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => AdviceList()),
        );
        break;
      case 3:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context)=>
              AlertDialog(
                title: const Text('Çıkmak istediğine emin misin?'),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'Cancel'),
                    child: const Text('Hayır'),
                  ),
                  TextButton(
                    onPressed: () => exit(0),
                    child: const Text('Evet'),
                  ),
                ],

              ),


          ),
        );


        break;






    }
  }
}
