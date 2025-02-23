import 'package:flutter/material.dart';
import 'package:ticketng_v1_2/base/resources/app_styles.dart';

class TicketViewColumnText extends StatelessWidget {
  
  final String textTop;
  final String textBottom;
  final CrossAxisAlignment crossalign;

  const TicketViewColumnText(
    {
      super.key,
      this.textTop = '',
      this.textBottom = '',
      this.crossalign =  CrossAxisAlignment.start,
    }
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossalign,
      children: [
        textTop.isNotEmpty
          ? Text(
            textTop,
            style: AppStyles.headLineStyle3,
          )
          : SizedBox(),
        textBottom.isNotEmpty
          ? Text(
            textBottom,
            style: AppStyles.headLineStyle4,
          )
          : SizedBox()
      ],
    );
  }
}