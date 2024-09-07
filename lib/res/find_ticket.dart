import 'package:flutter/material.dart';

class FindTicket extends StatelessWidget {
  const FindTicket({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 47, 33, 243),
          borderRadius: BorderRadius.circular(12)),
      child: const Center(
        child: Text(
          "Submitt",
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
