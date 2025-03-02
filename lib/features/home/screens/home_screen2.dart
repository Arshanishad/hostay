import 'package:flutter/material.dart';
import '../../../core/common/globals.dart';

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({super.key});

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  TextEditingController hotelController=TextEditingController();
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
                  child: Text(
                    'Current Location',
                    style: TextStyle(fontSize: w * 0.035, color: Colors.grey),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: w * 0.02),
                  child: Row(
                    children: [
                      Icon(Icons.location_on, color: Colors.indigo, size: w * 0.05),
                      SizedBox(width: w * 0.02),
                      Text(
                        "Bibwewadi, Pune",
                        style: TextStyle(
                            fontSize: w * 0.04, color: Colors.black, fontWeight: FontWeight.w500),
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
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: w * 0.04,),
                  child: TextFormField(
                    controller: hotelController,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide:BorderSide(color: Colors.grey,width: w*0.0025 ),
                          borderRadius: BorderRadius.circular(w*0.02),
                        ),
                      prefixIcon: Icon(Icons.search,size: w*0.07,color: Colors.grey,),
                      hintText: 'Search Hostel Nearby',
                        hintStyle: const TextStyle(color: Colors.grey),
                        suffixIcon: Padding(
                        padding:  EdgeInsets.only(right: w*0.02,top: w*0.02,bottom: w*0.02),
                        child: Container(
                          height: w*0.03,
                          width: w*0.015,
                         decoration: BoxDecoration(
                           color: Colors.blue,
                           borderRadius: BorderRadius.circular(w*0.02)
                         ),
                          child: Icon(
                            Icons.tune,
                            color: Colors.white,
                            size: w*0.05,
                          ),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(w*0.02),
                      )
                    ),
                  ),
                ),
                SizedBox(height: w*0.03,),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: w*0.04),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Nearby your location",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: w*0.04),),
                      Text("See all",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: w*0.04),),
                    ],
                  ),
                ),
                SizedBox(height: w*0.04,),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          // selectedIndex = index;
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
                                        Text(
                                          '4.0',
                                          style: TextStyle(fontSize: w * 0.03, fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: w * 0.02),
                                    Text(
                                      'STANZA LIVING HOSTEL',
                                      style: TextStyle(fontSize: w * 0.04, fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: w * 0.02),
                                    Text(
                                      'RAMYA NAGARI, BAKULNAGAR, BIBWEWADI',
                                      style: TextStyle(fontSize: w * 0.03, color: Colors.grey.shade400),
                                    ),
                                    SizedBox(height: w * 0.02),
                                    Text(
                                      'RENT - STARTING FROM ₹10,699/MONTH',
                                      style: TextStyle(fontSize: w * 0.03, fontWeight: FontWeight.bold, color: Colors.blue),
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
                  child: Text("Popular Destination",style: TextStyle(color: Colors.black,fontSize: w*0.04,fontWeight: FontWeight.bold),),
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
                              Text(
                                "Asteria Hostel",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: w * 0.04,
                                ),
                              ),
                              SizedBox(width: w * 0.02),
                              Text(
                                "RENT-5.5K",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: w * 0.04,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: w * 0.01),
                          Text(
                            "Ram Nagar, NT 0872, Katraj",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: w * 0.035,
                            ),
                          ),
                          SizedBox(height: w * 0.01),
                          Row(
                            children: [
                              Icon(Icons.star, size: w * 0.04, color: Colors.orange),
                              SizedBox(width: w * 0.01),
                              Text(
                                "5.0",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: w * 0.04,
                                ),
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

                  }, child: Text("NEXT",style: TextStyle(color: Colors.blue,fontSize: w*0.05))
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
