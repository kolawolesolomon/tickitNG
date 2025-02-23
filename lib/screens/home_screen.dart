import 'package:fluent_ui/fluent_ui.dart' show FluentIcons;
import 'package:flutter/material.dart';
import 'package:ticketng_v1_2/base/widget/customappwidget.dart';
import 'package:ticketng_v1_2/base/resources/app_styles.dart';
import 'package:ticketng_v1_2/base/widget/ticketview.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppStyles.lightPriColor,
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          style: AppStyles.headLineStyle3, 
                          'Good morning'),
                        Text(
                          style: AppStyles.headLineStyle1,
                          'Book Tickets')
                      
                      ],
                    ),
                    Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        // color: Colors.red,
                      ),
                      child: Image.asset('images/logo.png'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                SearchBar(
                  hintText: 'Search',
                  leading: IconButton(
                    icon: Icon(FluentIcons.search),
                    onPressed: (){}
                  )
                ),
                SizedBox(
                  height: 40,
                ),
                AppDoubleText(
                  bigText: 'Upcoming flights',
                  smallText: 'View all',
                ),
                SizedBox(
                  height: 20,
                ),
                Ticketview(),
              ]
            )
          )
        ]
      )
    );
  }
}