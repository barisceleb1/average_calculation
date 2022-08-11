import 'package:average_calculation/constants/app_constants.dart';
import 'package:average_calculation/helper/data_advices.dart';
import 'package:average_calculation/model/advices.dart';
import 'package:average_calculation/widget/advice_item.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
class AdviceList extends StatelessWidget {
  late final List<Advice> allAdvice;
  AdviceList({Key? key}) : super(key: key){
    allAdvice = _dataSource();
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.orange,
        title: Text('Tavsiyeler',style: Constants.titleStyle,),

      ),
      body: ExpandableTheme(
        data: const ExpandableThemeData(
          iconColor: Colors.orange,
          useInkWell: true,
        ),
        child: ListView.builder(itemBuilder: (context, index){
          return AdviceItem(listedAdvice: allAdvice[index]);
        },
          itemCount:allAdvice.length ,),
      ),
    );
  }

  List<Advice> _dataSource() {
    List<Advice> temporary= [];
    for (int i=0; i<4; i++){
      var _adviceTitles= Strings.ADVICES_TITLES[i];
      var _adviceImage = Strings.ADVICES_IMAGE[i].toLowerCase() +'.jpg';     //${i + 1}
      var _adviceInformation= Strings.ADVICES_INFORMATION[i];


      Advice addAdvice=
      Advice( _adviceTitles,_adviceImage, _adviceInformation);
      temporary.add(addAdvice);
    }
    return temporary;
  }






}


