import 'package:flutter/material.dart';
import 'package:ticketng_v1_2/base/utils/appjson.dart';
import 'package:ticketng_v1_2/base/widget/ticketview.dart';

class AllTicketScreen extends StatefulWidget {
  const AllTicketScreen({super.key});

  @override
  State<AllTicketScreen> createState() => _AllTicketScreenState();
}

class _AllTicketScreenState extends State<AllTicketScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Tickets'),
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: ticketList.length,
        itemBuilder: (context, index) => Column(
          children: [
            TicketView(
              curMapInfo: ticketList[index],
              ticketinmainview: false,
            ),
          ],
        ),
      ),
    );
  }
}