import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/all_hotels.dart';
import 'package:flutter_application_1/screens/all_tickets.dart';
import './myhomePage.dart';

void main() => runApp(const Myapp());

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter learning',
      theme: ThemeData.dark(useMaterial3: true),
      home: const MyhomePage(),
      routes: {
        "all-tickets": (context) => const AllTickets(),
        "all-hotels": (context) => const AllHotels()
      },
    );
  }
}
