import 'package:average_calculation/model/advices.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class AdviceItem extends StatelessWidget {
  final Advice listedAdvice;
  const AdviceItem({required this.listedAdvice, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Card(
            elevation: 8,
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height:200,
                  child: Container(

                    decoration: BoxDecoration(

                      image: DecorationImage(image: AssetImage("assets/images/"+ listedAdvice.adviceImage),fit: BoxFit.cover),                            // Image.asset('assets/images/'+ listedAdvice.adviceImage),
                      shape: BoxShape.rectangle,
                    ),
                  ),
                ),
                ScrollOnExpand(
                  scrollOnExpand: true,
                  scrollOnCollapse: false,
                  child: ExpandablePanel(
                    theme: const ExpandableThemeData(
                      headerAlignment: ExpandablePanelHeaderAlignment.center,
                      tapBodyToCollapse: true,
                    ),
                    header: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          listedAdvice.adviceTitles,
                          style: Theme.of(context).textTheme.bodyText1,
                        )),
                    collapsed: Text(
                      listedAdvice.adviceInformation,
                      softWrap: true,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    expanded: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text(
                              listedAdvice.adviceInformation,
                              softWrap: true,
                              overflow: TextOverflow.fade,
                            )),
                      ],
                    ),
                    builder: (_, collapsed, expanded) {
                      return Padding(
                        padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                        child: Expandable(
                          collapsed: collapsed,
                          expanded: expanded,
                          theme: const ExpandableThemeData(crossFadePoint: 0),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
