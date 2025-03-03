import 'package:flutter/material.dart';
import 'package:hostay/features/home/screens/student_details_page.dart';
import '../../../core/common/globals.dart';
import '../../../core/widgets/custom_text.dart';

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
              child:CustomText(
                text: "ROOM INFO",
                fontSize: w * 0.04,
                color: Colors.black,
              ),
            ),
            SizedBox(height: w * 0.03),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: w*0.03),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: "No of rooms",
                  fontSize: w * 0.04,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
                CustomText(
                  text: "12",
                  fontSize: w * 0.04,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ],
            ),
            SizedBox(height: w * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: "Room Type",
                  fontSize: w * 0.04,
                  color: Colors.grey,
                ),
                CustomText(
                  text: "Air Conditioned",
                  fontSize: w * 0.04,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ],
            ),
            SizedBox(height: w * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: "Room",
                  fontSize: w * 0.04,
                  color: Colors.grey,
                ),
                CustomText(
                  text: "3 SHARING AND 2 SHARING",
                  fontSize: w * 0.04,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ],
            ),
            SizedBox(height: w * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: "Charges",
                  fontSize: w * 0.04,
                  color: Colors.grey,
                ),
                CustomText(
                  text: "100/-BOOKING CHARGES",
                  fontSize: w * 0.04,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ],
            ),
            SizedBox(height: w * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: "Payment",
                  fontSize: w * 0.04,
                  color: Colors.grey,
                ),
                CustomText(
                  text: "5K * 6=30K half yearly payment",
                  fontSize: w * 0.04,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ],
            ),
            SizedBox(height: w * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: "GUARDIAN INFO",
                  fontSize: w * 0.04,
                  color: Colors.black,
                ),
              ],
            ),
            SizedBox(height: w * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: "Name",
                  fontSize: w * 0.04,
                  color: Colors.grey,
                ),
                CustomText(
                  text: "Karan",
                  fontSize: w * 0.04,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ],
            ),
            SizedBox(height: w * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: "Email",
                  fontSize: w * 0.04,
                  color: Colors.grey,
                ),
                CustomText(
                  text: "Karan7@gmail.com",
                  fontSize: w * 0.04,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ],
            ),
            SizedBox(height: w * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: "Mobile Number",
                  fontSize: w * 0.04,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
                CustomText(
                  text: "6898668966",
                  fontSize: w * 0.04,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ],
            ),
            SizedBox(height: w * 0.02),
            CustomText(
              text: "FOR VISIT TIMING",
              fontSize: w * 0.04,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
            ),
            CustomText(
              text: "WEEKDAYS-10AM TO 5PM",
              fontSize: w * 0.04,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
            ),
            CustomText(
              text: "WEEKENDS 11AM TO 7PM",
              fontSize: w * 0.04,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
            ),
          ],
        ),
      ),
            SizedBox(height: w*0.09),
            InkWell(
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => const StudentDetailsPage()));
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
                    child:    CustomText(
                      text: "CONFIRM BOOKING",
                      fontSize: w * 0.04,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
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
