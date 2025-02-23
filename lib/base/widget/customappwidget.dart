import 'package:flutter/material.dart';
import 'package:ticketng_v1_2/base/resources/app_styles.dart';

class AppDoubleText extends StatelessWidget {
  const AppDoubleText(
    {
      super.key,
      required this.bigText,
      required this.smallText,
    }
  );

  final String bigText;
  final String smallText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigText,
          style: AppStyles.headLineStyle1,
        ),
        InkWell(
          onTap: (){},
          child: Text(
            smallText,
            style: AppStyles.primaryapptext.copyWith(color: secondarytext),
          ),
        ),
      ],
    );
  }
}