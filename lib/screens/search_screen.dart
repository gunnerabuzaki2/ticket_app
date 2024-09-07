import 'package:flutter/material.dart';
import 'package:flutter_application_1/res/app_double_txt.dart';
import 'package:flutter_application_1/res/app_tab.dart';
import 'package:flutter_application_1/res/find_ticket.dart';
import 'package:flutter_application_1/res/search_field.dart';
import 'package:flutter_application_1/res/stack_box.dart';
import 'package:flutter_application_1/res/styles.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text(
              "What are you \n Looking For ?",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  child: AppTab(
                    tabText: "AirLine Tickets",
                  ),
                ),
                AppTab(
                  tabText: "Hotels",
                  isRight: true,
                  color: Colors.grey,
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const SearchField(
                icon: Icons.flight_takeoff_rounded, text: 'Departure'),
            const SizedBox(
              height: 10,
            ),
            const SearchField(icon: Icons.flight_land_rounded, text: 'Arrival'),
            const SizedBox(
              height: 20,
            ),
            const FindTicket(),
            const SizedBox(
              height: 10,
            ),
            App_double_txt(
                firstTxt: "Upcoming Flights",
                fontSize: 18,
                secondTxt: 'View All',
                func: () {}),
            const SizedBox(
              height: 15,
            ),
            const StackBox(),
          ],
        ),
      ),
    );
  }
}
