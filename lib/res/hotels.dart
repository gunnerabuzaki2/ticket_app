import 'package:flutter/material.dart';
import 'package:flutter_application_1/res/styles.dart';

class Hotels extends StatelessWidget {
  final Map<String, dynamic> hotels;
  final bool wholeScreen;
  const Hotels({super.key, required this.hotels, this.wholeScreen = false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.all(12),
      width: size * (wholeScreen ? 0.8 : 0.6),
      height: 300,
      decoration: BoxDecoration(
          color: AppStyles.ticketBlue, borderRadius: BorderRadius.circular(24)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.all(2),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                    image: AssetImage("Assests/images/${hotels['image']}"),
                    fit: BoxFit.cover)),
            height: 150,
          ),
          const SizedBox(
            height: 7,
          ),
          Text(
            hotels['place'],
            style: AppStyles.styleHeadline1,
          ),
          const SizedBox(
            height: 7,
          ),
          Text(hotels['destination'], style: AppStyles.styleHeadline1),
          const SizedBox(
            height: 7,
          ),
          Text("\$${hotels['price'].toString()}/Night",
              style: AppStyles.styleHeadline1),
        ],
      ),
    );
  }
}
//C:\Users\Eng Zaki\development\sdks\projects\flutter_application_1\Assests\images\two.png