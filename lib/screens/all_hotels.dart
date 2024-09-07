import 'package:flutter/material.dart';
import 'package:flutter_application_1/base/utils/all_json.dart';
import 'package:flutter_application_1/res/hotels.dart';
import 'package:flutter_application_1/res/styles.dart';

class AllHotels extends StatelessWidget {
  const AllHotels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppStyles.bgColor,
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "All Hotels",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          backgroundColor: AppStyles.bgColor,
        ),
        body: ListView(
          children: [
            SingleChildScrollView(
              child: Column(
                children: hotelList
                    .take(5)
                    .map((singleHotel) => Container(
                        margin: const EdgeInsets.all(10),
                        child: Hotels(
                          hotels: singleHotel,
                          wholeScreen: true,
                        )))
                    .toList(),
              ),
            )
          ],
        ));
  }
}
