import 'package:flutter/material.dart';
import 'package:hostay/core/widgets/custom_text.dart';

import '../../../core/common/globals.dart';

class ManageBooking extends StatefulWidget {
  const ManageBooking({super.key});

  @override
  State<ManageBooking> createState() => _ManageBookingState();
}

class _ManageBookingState extends State<ManageBooking> {
  @override
  Widget build(BuildContext context) {
    w=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
          Center(
            child: Padding(
              padding:  EdgeInsets.symmetric(vertical: w*0.02),
              child: Container(
                height: w*0.8,
                width: w*0.8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(w*0.02),
                  image: const DecorationImage(image: AssetImage("assets/images/hotel.jpeg"),fit: BoxFit.cover)
                ),
              ),
            ),
          ),
            CustomText(text: "STANZA LIVING HOSTEL"),
          ],
        ),
      ),
    );
  }
}
