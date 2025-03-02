import 'package:flutter/material.dart';
import 'package:hostay/features/login/screens/bottom_navbar.dart';

import '../../../core/common/globals.dart';

class GenderChooseIngPage extends StatefulWidget {
  const GenderChooseIngPage({super.key});

  @override
  State<GenderChooseIngPage> createState() => _GenderChooseIngPageState();
}

class _GenderChooseIngPageState extends State<GenderChooseIngPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(vertical: w*0.4),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                  child: Text("What's your gender?",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: w*0.07),)),
              SizedBox(height: w*0.02),
              Expanded(
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const BottomNavbar()));
                      },
                      child: Padding(
                        padding:  EdgeInsets.symmetric(horizontal: w*0.04),
                        child: Container(
                          width: w * 0.4,
                          height: w*0.3,
                          padding: EdgeInsets.symmetric(
                            horizontal: w * 0.1,
                            vertical: w * 0.04,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(w * 0.04),
                          ),
                          child: Center(
                            child: Text(
                              "Male",
                              style: TextStyle(
                                fontSize: w * 0.04,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),  InkWell(
                      onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const BottomNavbar()));
                      },
                      child: Padding(
                        padding:  EdgeInsets.symmetric(horizontal: w*0.04),
                        child: Container(
                          width: w * 0.4,
                          height: w*0.3,
                          padding: EdgeInsets.symmetric(
                            horizontal: w * 0.1,
                            vertical: w * 0.04,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(w * 0.04),
                          ),
                          child: Center(
                            child: Text(
                              "Female",
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
              SizedBox(height: w*0.03,),
              Text("We will find you the  best choices",style:
              TextStyle(fontWeight: FontWeight.bold,fontSize: w*0.05,color: Colors.black),),
              Text("according to your preferences",style: TextStyle(fontSize: w*0.05,fontWeight: FontWeight.bold,color: Colors.black),)
            ],
          ),
        ),
      ),
    );
  }
}
