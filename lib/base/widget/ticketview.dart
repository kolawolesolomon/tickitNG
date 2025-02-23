import 'package:flutter/material.dart';
import 'package:ticketng_v1_2/base/widget/app_layoutbuilderwidget.dart';
import 'package:ticketng_v1_2/base/widget/bigcircle.dart';
import 'package:ticketng_v1_2/base/resources/app_styles.dart';
import 'package:ticketng_v1_2/base/widget/ticketviewcolumntext.dart';

class Ticketview extends StatelessWidget {
  const Ticketview({super.key});

  @override
  Widget build(BuildContext context) {

  final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width*0.8,
      height:199,
      child: Container(
        margin: EdgeInsets.only(right: 16.0,),
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
                      textTop: 'NYC',
                      textBottom: 'New-York',
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
                          crossalign: CrossAxisAlignment.end,
                          textBottom: '8H : 30M',
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: TicketViewColumnText(
                      crossalign: CrossAxisAlignment.end,
                      textTop: 'NYC',
                      textBottom: 'New-York',
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
                    child: AppLayoutBuilderWidget(randomDivider: 11,),
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
                    textTop: '1 May',
                    textBottom: 'Date',
                  ),
                  TicketViewColumnText(
                    crossalign: CrossAxisAlignment.center,
                    textTop: '8:00 AM',
                    textBottom: 'Departure time',
                  ),
                  TicketViewColumnText(
                    crossalign: CrossAxisAlignment.end,
                    textTop: '23',
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