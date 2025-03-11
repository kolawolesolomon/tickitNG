import 'package:flutter/material.dart';
import 'package:ticketng_v1_2/base/resources/app_styles.dart';

class TicketViewColumnText extends StatelessWidget {
  
  final String textTop;
  final String textBottom;
  final CrossAxisAlignment crossalign;
  final TextAlign bottomTextAlign;
  final TextAlign topTextAlign;

  const TicketViewColumnText(
    {
      super.key,
      this.textTop = '',
      this.textBottom = '',
      this.crossalign =  CrossAxisAlignment.start,
      this.topTextAlign = TextAlign.start,
      this.bottomTextAlign = TextAlign.start,
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
            // textAlign: topTextAlign,
          )
          : SizedBox(),
        textBottom.isNotEmpty
          ? Text(
            textBottom,
            style: AppStyles.headLineStyle4,
            overflow: TextOverflow.ellipsis,
            // textAlign: bottomTextAlign,
          )
          : SizedBox()
      ],
    );
  }
}