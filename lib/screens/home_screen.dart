import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/base/utils/all_json.dart';
import 'package:flutter_application_1/res/app_double_txt.dart';
import 'package:flutter_application_1/res/hotels.dart';
import 'package:flutter_application_1/res/media.dart';
import 'package:flutter_application_1/res/styles.dart';
import 'package:flutter_application_1/res/ticket_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Good Morning',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Book Tickets',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            image: AssetImage(AppMedia.logo))),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD)),
                child: const Row(
                  children: [
                    Icon(
                      FluentSystemIcons.ic_fluent_search_regular,
                      color: Colors.yellow,
                    ),
                    Text("Search"),
                  ],

                  //TextField(),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              App_double_txt(
                firstTxt: "Upcoming Flight",
                secondTxt: "ViewAll",
                func: () => Navigator.pushNamed(context, "all-tickets"),
              ),
              //scroll
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: ticketList
                      .take(5)
                      .map((singleTicket) => TicketView(ticket: singleTicket))
                      .toList(),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              App_double_txt(
                firstTxt: "Hotels",
                secondTxt: "ViewAll",
                func: () => Navigator.pushNamed(context, "all-hotels"),
              ),
              const SizedBox(
                height: 5,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: hotelList
                      .map((singleHotel) => Container(
                          padding: const EdgeInsets.all(6),
                          child: Hotels(hotels: singleHotel)))
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
