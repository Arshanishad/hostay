import 'package:flutter/material.dart';
import 'package:hostay/core/widgets/custom_text.dart';
import 'package:hostay/features/home/screens/enquiry_page.dart';

import '../../../core/common/globals.dart';

class AddDetails extends StatefulWidget {
  const AddDetails({super.key});

  @override
  State<AddDetails> createState() => _AddDetailsState();
}

class _AddDetailsState extends State<AddDetails> {
  @override
  Widget build(BuildContext context) {
    w=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Center(child: Icon(Icons.photo_filter_rounded,size: w*0.7,)),
          SizedBox(height: w*0.02,),
          Padding(
            padding:  EdgeInsets.only(left: w*0.06),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 CustomText(text:'NO.OF ROOMS',fontSize: w*0.045,),
                 SizedBox(height: w*0.02,),
                 CustomText(text:'ROOM TYPE',fontSize: w*0.045,),
                SizedBox(height: w*0.02,),
                 CustomText(text:'ROOM CAPACITY',fontSize: w*0.045,),
                SizedBox(height: w*0.02,),
                 CustomText(text:'RENT',fontSize: w*0.045,),
                Divider(
                  thickness: w*0.004,
                  color: Colors.grey.shade200,
                ),
                CustomText(text:'RENT',fontSize: w*0.04,color: Colors.grey,),
                Divider(
                  thickness: w*0.004,
                  color: Colors.grey.shade200,
                ),
                CustomText(text:'GUARDIAN INFO',fontSize: w*0.04,color: Colors.black,),
                CustomText(text:'Name',fontSize: w*0.04,color: Colors.grey,),
                CustomText(text:'Email',fontSize: w*0.04,color: Colors.grey,),
                CustomText(text:'Mobile Number',fontSize: w*0.04,color: Colors.grey,),
                Divider(
                  thickness: w*0.004,
                  color: Colors.grey.shade200,
                ),
                CustomText(text:'FOR VISIT TIMINGS',fontSize: w*0.04,color: Colors.black,),
                SizedBox(height: w*0.25,),
                InkWell(
                  onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => const EnquiryPage()));
                  },
                  child: Container(
                    width: w * 0.9,
                    height: w*0.13,
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
                        "ADD DETAILS",
                        style: TextStyle(
                          fontSize: w * 0.04,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
