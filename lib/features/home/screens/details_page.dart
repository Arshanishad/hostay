import 'package:flutter/material.dart';
import 'package:hostay/features/home/screens/confirm_booking.dart';
import '../../../core/widgets/custom_text.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  List<Map<String, dynamic>> items = [
    {"label": "Free WFH", "icon": Icons.wifi},
    {"label": "BREAKFAST", "icon": Icons.coffee},
    {"label": "5.0", "icon": Icons.star},
  ];
  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    final double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(w * 0.04),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () => Navigator.pop(context),
                      child:
                      Container(
                        height: w * 0.08,
                        width: w * 0.08,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(w * 0.02),
                          color: Colors.white,
                        ),
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          size: w * 0.045,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(width: w * 0.03),
                    Center(
                      child: CustomText(
                        text: "Details",
                        fontSize: w * 0.05,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      height: w * 0.08,
                      width: w * 0.08,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(w * 0.02),
                        color: Colors.white,
                      ),
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.more_horiz,
                        size: w * 0.045,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 1,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                         selectedIndex = index;
                      });
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: w * 0.03),
                      child: Card(
                        color: Colors.white,
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(w * 0.02),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.vertical(top: Radius.circular(w * 0.02)),
                                  child: Container(
                                    width: double.infinity,
                                    height: w * 0.5,
                                    color: Colors.white,
                                    child: Padding(
                                      padding: EdgeInsets.all(w * 0.02),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(w * 0.02),
                                        child: Image.asset(
                                          "assets/images/hotel.jpeg",
                                          width: double.infinity,
                                          height: w * 0.45,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: w * 0.03,
                                  right: w * 0.03,
                                  child: Container(
                                    padding: EdgeInsets.all(w * 0.015),
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black26,
                                          blurRadius: 4,
                                          spreadRadius: 2,
                                        ),
                                      ],
                                    ),
                                    child: Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                      size: w * 0.05,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.all(w * 0.03),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.star, size: w * 0.05, color: Colors.amber),
                                      SizedBox(width: w * 0.02),
                                      CustomText(
                                        text: "4.0",
                                        fontSize: w * 0.03,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: w * 0.02),
                                  CustomText(
                                    text: "STANZA LIVING HOTEL",
                                    fontSize: w * 0.04,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  SizedBox(height: w * 0.02),
                                  CustomText(
                                    text: "RAMYA NAGARI,BAKULNAGAR, BIBWEWADI",
                                    fontSize: w * 0.03,
                                    color: Colors.grey.shade400,
                                  ),
                                  SizedBox(height: w * 0.02),
                                  CustomText(
                                    text: "RENT - STARTING FROM ₹10,699/MONTH",
                                    fontSize: w * 0.03,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
              SizedBox(
                height: w*0.15,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    bool isSelected = selectedIndex == index;
                    return Padding(
                      padding:  EdgeInsets.symmetric(horizontal: w*0.03,vertical: w*0.025),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        child: Container(
                          height: w*0.2,
                          width: w*0.27,
                          decoration: BoxDecoration(
                              color:  isSelected ? Colors.blue : Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(w*0.02)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(items[index]['icon'], size: w * 0.06, color:isSelected ? Colors.white : Colors.grey, ),
                              SizedBox(width: w * 0.02),
                              CustomText(
                                text: items[index]['label'],
                                fontSize: w * 0.025,
                                fontWeight: FontWeight.w500,
                                color: isSelected ? Colors.white : Colors.grey,
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: w*0.04),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: "Golden Leaf Hostel",
                      fontSize: w * 0.04,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    CustomText(
                      text: "4.5K/MONTH",
                      fontSize: w * 0.035,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: w*0.02),
                    child: Icon(Icons.location_on,color: Colors.blue,size: w*0.05,),
                  ),
                  SizedBox(width: w*0.02,),
                  CustomText(
                    text: "Upper indira nagar,NT 0870,Bibwewadi",
                    fontSize: w * 0.035,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade400,
                  ),
                ],
              ),
              Align(
                alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: w*0.025),
                    child:   CustomText(
                      text: "Description",
                      fontSize: w * 0.04,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )),
              SizedBox(height: w*0.03,),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: w * 0.03),
                  child:   CustomText(
                    text: "Start living your best platform day one.\n"
                        "Bring a box full of hopes, dreams, ambitions, and of course,"
                        "your personal belongings.",
                    fontSize: w * 0.035,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(height:w*0.03 ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: w*0.025),
                    child:  CustomText(
                      text: "CONTACT-98674456XX",
                      fontSize: w * 0.03,
                      color: Colors.black,
                    ),
                  )),
              Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: w*0.025),
                    child:   CustomText(
                      text: "Preview",
                      fontSize: w * 0.045,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  )),
              SizedBox(
                height: w*0.2,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: w * 0.02),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(w * 0.04),
                          child: Image.asset(
                            "assets/images/hotel.jpeg",
                            height: w * 0.2,
                            width: w * 0.2,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: w * 0.02),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(w * 0.04),
                          child: Image.asset(
                            "assets/images/hotel.jpeg",
                            height: w * 0.2,
                            width: w * 0.2,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: w * 0.02),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(w * 0.04),
                          child: Image.asset(
                            "assets/images/hotel.jpeg",
                            height: w * 0.2,
                            width: w * 0.2,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.all(w*0.02),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder:(context) => const ConfirmBooking()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.symmetric(
                      horizontal: w * 0.3,
                      vertical: w * 0.035,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(w*0.02),
                    ),
                  ),
                  child:   CustomText(
                    text: "Book Now",
                    fontSize: w * 0.035,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
