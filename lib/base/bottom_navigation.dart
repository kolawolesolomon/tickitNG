import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'package:ticketng_v1_2/screens/account_screen.dart';
import 'package:ticketng_v1_2/screens/home_screen.dart';
import 'package:ticketng_v1_2/screens/search_screen.dart';
import 'package:ticketng_v1_2/screens/ticket_screen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  int currentAppScreenindex = 0;
  
  List appScreens = [
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const AccountScreen(),
  ];

 int updateCurrentAppScreenIndex(int index){
    setState(() {
      currentAppScreenindex = index ;
    });
    return currentAppScreenindex;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: appScreens[currentAppScreenindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentAppScreenindex,
        onTap: updateCurrentAppScreenIndex,
        type:BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xffffffff),
        backgroundColor: Color(0xFF00796b),
        showSelectedLabels: true,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(FluentIcons.home),
            label: 'Home',
            activeIcon: Icon(FluentIcons.home_solid),
            tooltip: 'Home button',
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentIcons.search),
            label: 'Search',
            activeIcon: Icon(Icons.search_sharp),
            tooltip: 'Search button',
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentIcons.ticket),
            label: 'Ticket',
            activeIcon: Icon(FluentIcons.ticket),
            tooltip: 'Ticket button',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_4),
            label: 'Account',
            activeIcon: Icon(Icons.person_4_sharp),
            tooltip: 'Account button',
          ),
        ],
      ),       
    );
  }
}