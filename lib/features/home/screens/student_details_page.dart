
import 'package:flutter/material.dart';
import 'package:hostay/features/home/screens/listing_screen.dart';
import '../../../core/common/globals.dart';
import '../../../core/widgets/custom_text.dart';
import '../../../core/widgets/custom_textformfield.dart';

class StudentDetailsPage extends StatefulWidget {
  const StudentDetailsPage({super.key});

  @override
  State<StudentDetailsPage> createState() => _StudentDetailsPageState();
}

class _StudentDetailsPageState extends State<StudentDetailsPage> {
  String selectedValue = '2 SHARING ROOM';
  TextEditingController nameController=TextEditingController();
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  TextEditingController phoneNoController=TextEditingController();
  TextEditingController collegeAdmittedToController=TextEditingController();
  TextEditingController selectedBranchController=TextEditingController();
  TextEditingController parentMobileController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    w=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: w*0.07,vertical: w*0.03),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: "PLEASE FILL STUDENT DETAILS",
                  fontSize: w * 0.05,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                SizedBox(height: w*0.06),
                CustomText(
                  text: "Provide Correct Credentials to avoid any hussle",
                  fontSize: w * 0.03,
                  color: Colors.black,
                ),
                SizedBox(height: w*0.04,),
                CustomText(
                  text: "Student Details",
                  fontSize: w * 0.04,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                SizedBox(height: w*0.03,),
                CustomTextFormField(
                  controller: nameController,
                  hintText: 'Name',
                ),
                SizedBox(height: w*0.03,),
                CustomTextFormField(
                  controller: emailController,
                  hintText: 'Email',
                ),
                SizedBox(height: w*0.03,),
                CustomTextFormField(
                  controller: passwordController,
                  hintText: 'Password',
                  isPassword: true,
                  suffixIcon: Icons.visibility,
                ),
                SizedBox(height: w*0.03,),
                CustomTextFormField(
                  controller: phoneNoController,
                  hintText: 'Phone Number',
                  keyboardType: TextInputType.phone,
                  suffixIcon: Icons.phone,
                ),
                SizedBox(height: w*0.03,),
                CustomTextFormField(
                  controller: collegeAdmittedToController,
                  hintText: 'College Admitted To',
                ),
                SizedBox(height: w*0.03,),
                CustomTextFormField(
                  controller: selectedBranchController,
                  hintText: 'Selected Branch',
                ),
                SizedBox(height: w*0.03,),
                CustomTextFormField(
                  controller: parentMobileController,
                  hintText: 'Parent Mobile',
                  keyboardType: TextInputType.phone,
                  suffixIcon: Icons.phone,
                ),
                SizedBox(height: w*0.03,),
            Container(
              height: w* 0.3,
              width: w ,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(w * 0.15),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:  EdgeInsets.symmetric(vertical:w*0.03,horizontal: w*0.045),
                      child: CustomText(
                        text: "Select Room Type",
                        fontSize: w * 0.03,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: w*0.06,
                      child: Row(
                        children: [ SizedBox(width: w*0.1,),
                          Transform.scale(
                            scale: 0.7,
                            child: Radio<String>(
                              visualDensity: VisualDensity.compact,
                              value: ' 2SHARING ROOM,',
                              groupValue: selectedValue,
                              onChanged: (value) {
                                setState(() {
                                  selectedValue = value!;
                                });
                              },
                            ),
                          ),
                          CustomText(
                            text: "2 SHARING ROOM",
                            fontSize: w * 0.03,
                          ),
                        ]
                      ),
                    ),
                    SizedBox(
                      height: w*0.06,
                      child: Row(
                          children: [
                            SizedBox(width: w*0.1,),
                            Transform.scale(
                              scale: 0.7,
                              child: Radio<String>(
                                visualDensity: VisualDensity.compact,
                                value: '3 SHARING ROOM,',
                                groupValue: selectedValue,
                                onChanged: (value) {
                                  setState(() {
                                    selectedValue = value!;
                                  });
                                },
                              ),
                            ),
                            CustomText(
                              text: "3 SHARING ROOM",
                              fontSize: w * 0.03,
                            ),
                          ]
                      ),
                    ),
                  ],
                ),
              )
            ),
                SizedBox(height: w*0.07),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context) => const ListingScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: EdgeInsets.symmetric(
                        horizontal: w * 0.3,
                        vertical: w * 0.05,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(w*0.065),
                      ),
                    ),
                    child:CustomText(
                      text: "SUBMIT",
                      fontSize: w * 0.025,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
