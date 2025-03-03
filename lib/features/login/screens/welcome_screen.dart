import 'package:flutter/material.dart';
import 'package:hostay/features/login/screens/signup_screen.dart';
import '../../../core/common/globals.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    w=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding:  EdgeInsets.all(w*0.09),
            child: Container(
              height: w*1.0,
              width: w * 0.8,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/login.jpg"),
                  scale: Checkbox.width,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Text(
            "Let's Find Your Sweet &",
            style: TextStyle(
              fontSize: w * 0.05,
              fontWeight: FontWeight.w200,
              color: Colors.black,
            ),
          ),
          Text(
            "Dream Place",
            style: TextStyle(
              fontSize:w * 0.05,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          SizedBox(height:w* 0.02),
          Text(
            "Get the opportunity to stay that you dream of at an",
            style: TextStyle(
              fontSize: w * 0.025,
              color: Colors.grey,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            "affordable price",
            style: TextStyle(
              fontSize: w* 0.025,
              color: Colors.grey,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: w * 0.45),
          ElevatedButton(
            onPressed: () {
             Navigator.push(context, MaterialPageRoute(
                 builder: (context) => SignupScreen()));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              padding: EdgeInsets.symmetric(
                horizontal: w * 0.3,
                vertical: w * 0.05,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(w*0.02),
              ),
            ),
            child: Text(
              "Let's Go",
              style: TextStyle(
                fontSize: w * 0.025,
                color: Colors.white,
              ),
            ),
          ),
        ],
      )
    );
  }
}

