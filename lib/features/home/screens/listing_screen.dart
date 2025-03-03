import 'package:flutter/material.dart';
import 'package:hostay/core/widgets/custom_text.dart';
import 'package:hostay/features/home/screens/manage_booking.dart';
import '../../../core/common/globals.dart';

class ListingScreen extends StatefulWidget {
  const ListingScreen({super.key});

  @override
  State<ListingScreen> createState() => _ListingScreenState();
}

class _ListingScreenState extends State<ListingScreen> {
  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding:
              EdgeInsets.symmetric(vertical: w * 0.06, horizontal: w * 0.02),
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: w * 0.03, vertical: w * 0.015),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context) => const ManageBooking()));
                      },
                      child: Card(
                        elevation: 3,
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(w * 0.02),
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: w * 0.3,
                              width: w * 0.2,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image:
                                        AssetImage("assets/images/hotel.jpeg")),
                                borderRadius: BorderRadius.circular(w * 0.02),
                              ),
                            ),
                            SizedBox(
                              width: w * 0.02,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    CustomText(
                                      text: "Chintamani PG",
                                      fontSize: w * 0.038,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                    SizedBox(width: w * 0.04),
                                    RichText(
                                      text: TextSpan(
                                          text: "4k",
                                          style: TextStyle(
                                              fontSize: w * 0.03,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blue),
                                          children: [
                                            TextSpan(
                                                text: "/month",
                                                style: TextStyle(
                                                    fontSize: w * 0.03,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.grey))
                                          ]),
                                    ),
                                  ],
                                ),
                                CustomText(
                                  text: "Lower indira nagar,Bibwewadi",
                                  color: Colors.grey,
                                  fontSize: w * 0.033,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      height: w*0.1,
                                      child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemCount: 5,
                                        shrinkWrap: true,
                                        physics: const NeverScrollableScrollPhysics(),
                                        itemBuilder: (context, index) {
                                          return Icon(
                                            Icons.star,
                                            size: w * 0.06,
                                            color: Colors.yellow,
                                          );
                                        },
                                      ),
                                    ),
                                    SizedBox(
                                      width: w * 0.02,
                                    ),
                                    CustomText(
                                      text: '5.0',
                                      color: Colors.black,
                                      fontSize: w * 0.038,
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
