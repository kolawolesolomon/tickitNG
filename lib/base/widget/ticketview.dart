import 'package:flutter/material.dart';
import 'package:ticketng_v1_2/base/widget/app_layoutbuilderwidget.dart';
import 'package:ticketng_v1_2/base/widget/bigcircle.dart';
import 'package:ticketng_v1_2/base/resources/app_styles.dart';
import 'package:ticketng_v1_2/base/widget/ticketviewcolumntext.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> curMapInfo;
  final bool? ticketinmainview;
  
  const TicketView(
    {
      super.key,
      required this.curMapInfo,
      this.ticketinmainview = true,
    }
  );

  @override
  Widget build(BuildContext context) {

  final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width*0.8,
      height:199,
      child: Container(
        margin: EdgeInsets.only(right: ticketinmainview == true? 16:0,),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.priColor,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(21),topRight: Radius.circular(21)),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TicketViewColumnText(
                      textTop: curMapInfo['from']['code'],
                      textBottom: curMapInfo['from']['name'],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment(0,0),
                          children: [
                            AppLayoutBuilderWidget(randomDivider: 10, addDot: true,),
                            Transform.rotate(
                              angle: 1.57,
                              child: Icon(
                                Icons.local_airport_rounded,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                        TicketViewColumnText(
                          crossalign: CrossAxisAlignment.center,
                          textBottom: curMapInfo['flying_time'],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: TicketViewColumnText(
                      crossalign: CrossAxisAlignment.end,
                      textTop: curMapInfo['to']['code'],
                      textBottom: curMapInfo['to']['name'],
                      topTextAlign: TextAlign.end,
                      bottomTextAlign: TextAlign.end,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 20,
              color: Color.fromARGB(255, 165, 134, 41),
              child: Row(
                children:[
                  Bigcircle(isRight: false,),
                  Expanded(
                    child: AppLayoutBuilderWidget(randomDivider: 10,),
                  ),
                  Bigcircle(isRight: true,),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 165, 134, 41),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(21), bottomRight: Radius.circular(21)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Here we are showing departure and destination with icons first line
                  TicketViewColumnText(
                    textTop: curMapInfo['date'],
                    textBottom: 'Date',
                  ),
                  TicketViewColumnText(
                    crossalign: CrossAxisAlignment.center,
                    textTop: curMapInfo['departure_time'],
                    textBottom: 'Departure time',
                  ),
                  TicketViewColumnText(
                    crossalign: CrossAxisAlignment.end,
                    textTop: curMapInfo['number'],
                    textBottom: 'Number',
                  ),               
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}