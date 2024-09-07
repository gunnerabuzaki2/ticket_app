import 'package:flutter/material.dart';
import 'package:flutter_application_1/res/app_dots.dart';
import 'package:flutter_application_1/res/big_dot.dart';
import 'package:flutter_application_1/res/half_circle.dart';
import 'package:flutter_application_1/res/text_widget.dart';

import 'styles.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool wholeScreen;
  const TicketView({super.key, required this.ticket, this.wholeScreen = false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 202,
      child: Container(
        margin: EdgeInsets.only(right: wholeScreen ? 0 : 16),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21)),
                  color: AppStyles.ticketBlue),
              child: Column(
                children: [
                  //first part of the ticket
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextWidget(
                        title: ticket["from"]["code"],
                        textStyle: AppStyles.styleHeadline1,
                      ),
                      Expanded(child: Container()),
                      const BigDot(),
                      Expanded(
                          child: Stack(
                        children: [
                          const SizedBox(
                              height: 24, child: AppDots(divider: 6)),
                          Center(
                            child: Transform.rotate(
                              angle: 1.57,
                              child: const Icon(Icons.local_airport_rounded),
                            ),
                          )
                        ],
                      )),
                      const BigDot(),
                      Expanded(child: Container()),
                      TextWidget(
                        title: ticket['to']['code'],
                        textStyle: AppStyles.styleHeadline1,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  //second part of the ticket
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: TextWidget(
                          title: ticket['from']['name'],
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Expanded(child: Container()),
                      TextWidget(
                        title: ticket['flying_time'],
                      ),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: TextWidget(
                          title: ticket['to']['name'],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: AppStyles.ticketOrange,
              child: const Row(
                children: [
                  HalfCircle(isRight: false),
                  Expanded(
                    child: AppDots(
                      divider: 16,
                      width: 8,
                    ),
                  ),
                  HalfCircle(isRight: true),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(21),
                      bottomLeft: Radius.circular(21)),
                  color: AppStyles.ticketOrange),
              child: Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  //first part of the ticket
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: TextWidget(
                          title: ticket['date'],
                          textStyle: AppStyles.styleHeadline1,
                          textAlign: TextAlign.start,
                        ),
                      ),
                      TextWidget(
                        title: ticket['departure_time'],
                        textStyle: AppStyles.styleHeadline1,
                      ),
                      SizedBox(
                        width: 100,
                        child: TextWidget(
                          title: ticket['number'].toString(),
                          textStyle: AppStyles.styleHeadline1,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  //second part of the ticket
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: TextWidget(
                          title: "Date",
                          textAlign: TextAlign.start,
                        ),
                      ),
                      TextWidget(
                        title: "Departure Time",
                      ),
                      SizedBox(
                        width: 80,
                        child: TextWidget(
                          title: "Number",
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
