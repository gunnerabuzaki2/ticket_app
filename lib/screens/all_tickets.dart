import 'package:flutter/material.dart';
import 'package:flutter_application_1/base/utils/all_json.dart';
import 'package:flutter_application_1/res/styles.dart';
import 'package:flutter_application_1/res/ticket_view.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppStyles.bgColor,
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "All Tickets",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          backgroundColor: AppStyles.bgColor,
        ),
        body: ListView(
          children: [
            SingleChildScrollView(
              child: Column(
                children: ticketList
                    .take(5)
                    .map((singleTicket) => Container(
                        margin: const EdgeInsets.all(10),
                        child: TicketView(
                          ticket: singleTicket,
                          wholeScreen: true,
                        )))
                    .toList(),
              ),
            )
          ],
        ));
  }
}
