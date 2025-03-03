import 'package:flutter/material.dart';
import 'package:hostay/core/widgets/custom_text.dart';
import 'package:hostay/features/home/screens/add_details.dart';
import '../../../core/common/globals.dart';

class ManageBooking extends StatefulWidget {
  const ManageBooking({super.key});

  @override
  State<ManageBooking> createState() => _ManageBookingState();
}

class _ManageBookingState extends State<ManageBooking> {
  TextEditingController totalVacanciesController =
      TextEditingController(text: "12");
  TextEditingController totalBookingsController =
      TextEditingController(text: "0");
  TextEditingController remainingVacanciesController =
      TextEditingController(text: "12");

  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: w * 0.02),
                  child: Container(
                    height: w * 0.8,
                    width: w * 0.8,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(w * 0.02),
                        image: const DecorationImage(
                            image: AssetImage("assets/images/hotel.jpeg"),
                            fit: BoxFit.cover)),
                  ),
                ),
              ),
              CustomText(
                text: "STANZA LIVING HOSTEL",
                fontSize: w * 0.03,
              ),
              SizedBox(
                height: w * 0.02,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: w * 0.04),
                    child: CustomText(
                      text: "MANAGE BOOKINGS",
                      fontWeight: FontWeight.bold,
                      fontSize: w * 0.045,
                    ),
                  )),
              SizedBox(
                height: w * 0.03,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: w * 0.05),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            height: w*0.1,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(w * 0.02),
                            ),
                            padding: EdgeInsets.symmetric(vertical: w * 0.02),
                            alignment: Alignment.center,
                            child: Padding(
                              padding:EdgeInsets.only(left: w*0.02),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: CustomText(
                                  text: 'TOTAL VACANCIES',
                                  fontSize: w * 0.04,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: w * 0.05),
                        Expanded(
                          flex: 1,
                          child: SizedBox(
                            height: w*0.1,
                            width: w*0.2,
                            child: TextFormField(
                              controller: totalVacanciesController,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey.shade200,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(w * 0.02),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: w * 0.05),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: w * 0.05),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            height: w*0.1,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(w * 0.02),
                            ),
                            padding: EdgeInsets.symmetric(vertical: w * 0.02),
                            alignment: Alignment.center,
                            child: Padding(
                              padding:  EdgeInsets.only(left: w*0.02),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: CustomText(
                                  text: 'TOTAL BOOKINGS',
                                  fontSize: w * 0.04,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: w * 0.05),
                        Expanded(
                          flex: 1,
                          child: SizedBox(
                            height: w*0.1,
                            width: w*0.2,
                            child: TextFormField(
                              controller: totalBookingsController,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey.shade200,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(w * 0.02),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: w * 0.05),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: w * 0.05),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            height: w*0.13,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(w * 0.02),
                            ),
                            padding: EdgeInsets.symmetric(vertical: w * 0.02),
                            alignment: Alignment.center,
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: w*0.02),
                                child: CustomText(
                                  text:'REMAINING\nVACANCIES',
                                  fontSize: w * 0.03,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: w * 0.05),
                        Expanded(
                          flex: 1,
                          child: SizedBox(
                            height: w*0.1,
                            width: w*0.2,
                            child: TextFormField(
                              controller: remainingVacanciesController,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey.shade200,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(w * 0.02),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: w * 0.06),
                      child: Container(
                        height: w * 0.15,
                        width: w * 0.4,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(w * 0.02),
                        ),
                        padding: EdgeInsets.symmetric(vertical: w * 0.025),
                        alignment: Alignment.center,
                        child: CustomText(
                          text: "APPOINMENTS",
                          fontSize: w * 0.04,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: w * 0.03,
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context) => const AddDetails()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        padding: EdgeInsets.symmetric(
                          horizontal: w * 0.3,
                          vertical: w * 0.05,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(w * 0.02),
                        ),
                      ),
                      child: Text(
                        "DONE",
                        style: TextStyle(
                          fontSize: w * 0.03,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
