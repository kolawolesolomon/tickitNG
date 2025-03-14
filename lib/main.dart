import 'package:flutter/material.dart';
import 'package:ticketng_v1_2/base/bottom_navigation.dart';
import 'package:ticketng_v1_2/screens/hotelviewallsection.dart';
import 'package:ticketng_v1_2/screens/view_all_ticket_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal.shade900),
        bottomAppBarTheme: BottomAppBarTheme(color: Color(0xFF00796B)), // Correct way to set background
      ),

      routes:{
        '/':(context){
          return BottomNavigation();
        },
        '/ViewAll': (BuildContext context) {
          return AllTicketScreen();
        },
        '/HotelAll': (BuildContext context) {
          return HotelSectionViewAll();
        },
      },
    );
  }
}