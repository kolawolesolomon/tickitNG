import 'package:flutter/material.dart';
import 'package:ticketng_v1_2/base/resources/app_styles.dart';

class Bigcircle extends StatelessWidget {
  final bool isRight;


  const Bigcircle({
    super.key,
    required this.isRight,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: 10,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: AppStyles.lightPriColor,
          borderRadius: isRight == true? BorderRadius.only(       
            topLeft: Radius.circular(10),
            bottomLeft: Radius.circular(10),
          ):BorderRadius.only(
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(10),
          )
        )
      ),
    );
  }
}