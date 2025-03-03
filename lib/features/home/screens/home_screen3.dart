import 'package:flutter/material.dart';
import 'package:hostay/features/home/screens/details_page.dart';
import '../../../core/common/globals.dart';
import '../../../core/widgets/custom_text.dart';

class HomeScreen3 extends StatefulWidget {
  const HomeScreen3({super.key});

  @override
  State<HomeScreen3> createState() => _HomeScreen3State();
}

class _HomeScreen3State extends State<HomeScreen3> {
  List<Map<String, dynamic>> items = [
    {"label": "Hostel", "icon": Icons.hotel},
    {"label": "PG", "icon": Icons.apartment},
    {"label": "Rooms", "icon": Icons.meeting_room},
  ];
  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: w * 0.02, vertical: w * 0.04),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: w * 0.05),
                  child: CustomText(
                    text: "Current Location ",
                    fontSize: w * 0.035,
                    color: Colors.grey,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: w * 0.02),
                  child: Row(
                    children: [
                      Icon(Icons.location_on, color: Colors.indigo, size: w * 0.05),
                      SizedBox(width: w * 0.02),
                      CustomText(
                        text: "Bibwewadi, Pune",
                        fontSize: w * 0.04,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                      Icon(Icons.keyboard_arrow_down_outlined, color: Colors.black, size: w * 0.05),
                      const Spacer(),
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            height: w * 0.07,
                            width: w * 0.07,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey.shade300, width: 1.0),
                              borderRadius: BorderRadius.circular(w * 0.01),
                            ),
                            child: Center(
                              child: Icon(Icons.notifications, color: Colors.black, size: w * 0.04),
                            ),
                          ),
                          Positioned(
                            top: 3,
                            right: 4,
                            child: Container(
                              height: w * 0.02,
                              width: w * 0.02,
                              decoration: const BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: w*0.04,),
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
                            width: w*0.25,
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
                                  text:items[index]['label'],
                                  fontSize: w * 0.03,
                                  fontWeight: FontWeight.w500,
                                  color:isSelected?Colors.white:Colors.grey,
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },),
                ),
                SizedBox(height: w*0.02,),
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
                        padding: EdgeInsets.symmetric(horizontal: w*0.03),
                        child: Card(
                          color: Colors.white,
                          elevation: 4,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(w * 0.02)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.vertical(top: Radius.circular(w * 0.02)),
                                child: SizedBox(
                                  width: double.infinity,
                                  height: w * 0.5,
                                  child: Image.asset(
                                    "assets/images/hotel.jpeg",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(w * 0.03),
                                child:Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
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
                                                size: w * 0.05,
                                                color: Colors.amber,
                                              );
                                            },
                                          ),
                                        ),
                                        SizedBox(width: w*0.02),
                                        CustomText(
                                          text: "4.0",
                                          fontSize: w * 0.03,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: w*0.02),
                                    CustomText(
                                      text: "STANZA LIVING HOSTEL",
                                      fontSize: w * 0.04,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    SizedBox(height:w*0.02),
                                    CustomText(
                                      text: "RAMYA NAGARI, BAKULNAGAR, BIBWEWAI ",
                                      fontSize: w * 0.03,
                                      color: Colors.grey.shade400,
                                    ),
                                    SizedBox(height: w*0.02),
                                    CustomText(
                                      text: "RENT-STARTING FROM ₹10,699/MONTH ",
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
                SizedBox(height: w*0.02,),
                Padding(
                  padding:  EdgeInsets.only(left: w*0.03),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: "Popular Choices ",
                        fontSize: w * 0.04,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      CustomText(
                        text: "See all",
                        fontSize: w * 0.04,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: w*0.02,),
                Container(
                  padding: EdgeInsets.all(w * 0.03),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(w * 0.02),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(w * 0.01),
                        child: Image.asset(
                          "assets/images/hotel.jpeg",
                          height: w * 0.2,
                          width: w * 0.2,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: w * 0.03),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CustomText(
                                text: "Asteria Hostel",
                                fontSize: w * 0.04,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              SizedBox(width: w * 0.02),
                              CustomText(
                                text: "RENT-5.5K",
                                fontSize: w * 0.04,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                            ],
                          ),
                          SizedBox(height: w * 0.01),
                          CustomText(
                            text: "Ram Nagar,NT 0872, Katraj",
                            fontSize: w * 0.035,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          SizedBox(height: w * 0.01),
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
                                      size: w * 0.04,
                                      color: Colors.orange,
                                    );
                                  },
                                ),
                              ),
                              SizedBox(width: w * 0.01),
                              CustomText(
                                text: "5.0 ",
                                fontSize: w * 0.04,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: w*0.04,),
                Center(
                  child: TextButton(onPressed: (){
                   Navigator.push(context,MaterialPageRoute(builder: (context) => const DetailsPage()));
                  }, child:  CustomText(
                    text: "NEXT",
                    fontSize: w * 0.05,
                    color: Colors.blue,
                  ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
