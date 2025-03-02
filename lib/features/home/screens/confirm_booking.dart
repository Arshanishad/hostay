import 'package:flutter/material.dart';
import '../../../core/common/globals.dart';

class ConfirmBooking extends StatefulWidget {
  const ConfirmBooking({super.key});

  @override
  State<ConfirmBooking> createState() => _ConfirmBookingState();
}

class _ConfirmBookingState extends State<ConfirmBooking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: w*0.07),
              child: Container(
                height: w*0.4,
                width: w*1.8,
                decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/images/hotel.jpeg"),fit: BoxFit.cover),
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: w*0.06),
              child: Text("ROOM INFO",style: TextStyle(color: Colors.black,fontSize: w*0.04),),
            ),
            SizedBox(height: w * 0.03),
      Padding(
        padding: EdgeInsets.only(left: w*0.02,right: w*0.03),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "No of rooms",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: w * 0.04,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "12",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: w * 0.04,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: w * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Room Type",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: w * 0.04,
                  ),
                ),
                Text(
                  "Air Conditioned",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: w * 0.04,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: w * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Room",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: w * 0.04,
                  ),
                ),
                Text(
                  "3 SHARING AND 2 SHARING",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: w * 0.04,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: w * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Charges",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: w * 0.04,
                  ),
                ),
                Text(
                  "100/-BOOKING CHARGES",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: w * 0.04,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: w * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Payment",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: w * 0.04,
                  ),
                ),
                Text(
                  "5K * 6=30K half yearly payment",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: w * 0.04,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: w * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "GUARDIAN INFO",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: w * 0.04,
                  ),
                ),
              ],
            ),
            SizedBox(height: w * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Name",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: w * 0.04,
                  ),
                ),
                Text(
                  "Karan",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: w * 0.04,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: w * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Email",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: w * 0.04,
                  ),
                ),
                Text(
                  "karan7@gmail.com",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: w * 0.04,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: w * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Mobile Number",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: w * 0.04,
                  ),
                ),
                Text(
                  "6898668966",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: w * 0.04,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: w * 0.02),
            Text(
              "FOR VISIT TIMINGS",
              style: TextStyle(
                color: Colors.black,
                fontSize: w * 0.04,
              ),
            ),
            Text(
              "WEEKDAYS-10AM TO 5PM",
              style: TextStyle(
                color: Colors.grey,
                fontSize: w * 0.03,
              ),
            ),
            Text(
              "WEEKENDS-11AM TO 7PM",
              style: TextStyle(
                color: Colors.grey,
                fontSize: w * 0.03,
              ),
            ),
          ],
        ),
      ),
            SizedBox(height: w*0.09),
            InkWell(
              onTap: () {
              },
              child: Center(
                child: Container(
                  width: w * 0.9,
                  padding: EdgeInsets.symmetric(
                    horizontal: w * 0.1,
                    vertical: w * 0.04,
                  ),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Colors.blue, Colors.green],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(w * 0.04),
                  ),
                  child: Center(
                    child: Text(
                      "CONFIRM BOOKING",
                      style: TextStyle(
                        fontSize: w * 0.04,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
