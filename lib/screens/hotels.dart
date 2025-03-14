import 'package:flutter/material.dart';
import 'package:ticketng_v1_2/base/resources/app_styles.dart';

class HotelSection extends StatelessWidget {
  const HotelSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.35,
      width: size.width * 0.7,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppStyles.darkPriColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.asset('images/hotelroom1.jpeg',),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Hotel name',
              style: AppStyles.headLineStyle1.copyWith(
                color: AppStyles.lightPrimaryColor,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Price',
              style: AppStyles.headLineStyle2.copyWith(
                color: AppStyles.lightPrimaryColor,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Location',
              style: AppStyles.headLineStyle1.copyWith(
                color: AppStyles.lightPrimaryColor,
              ),
            ),
          ),
        ]
      ),
    );
  }
}