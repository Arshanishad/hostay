import 'package:flutter/material.dart';
import 'package:hostay/features/login/screens/gender_choosingPage.dart';
import 'package:hostay/features/login/screens/signin_screen.dart';
import '../../../core/common/globals.dart';
import '../../../core/widgets/custom_text.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController nameController=TextEditingController();
  TextEditingController emailController=TextEditingController();
  TextEditingController phoneNoController=TextEditingController();
  TextEditingController passwordController=TextEditingController();

  FocusNode nameFocusNode=FocusNode();
  FocusNode emailFocusNode=FocusNode();
  FocusNode phoneFocusNode=FocusNode();
  FocusNode passwordFocusNode=FocusNode();

  @override
  void dispose() {
    nameFocusNode.dispose();
    emailFocusNode.dispose();
    phoneFocusNode.dispose();
    passwordFocusNode.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(vertical: w*0.36),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: w * 0.1),
                child: TextFormField(
                  focusNode: nameFocusNode,
                  controller: nameController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person,color: Colors.blue,),
                    hintText: "Full Name",
                  ),
                ),
              ),
              SizedBox(height: w*0.05),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: w * 0.1),
                child: TextFormField(
                  focusNode: emailFocusNode,
                  controller: emailController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person,color: Colors.blue,),
                    hintText: "Email",
                  ),
                ),
              ),
              SizedBox(height: w*0.05),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: w * 0.1),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: DropdownButton<String>(
                        value: "+91",
                        icon: const Icon(Icons.arrow_drop_down, color: Colors.blue),
                        onChanged: (String? newValue) {
                          setState(() {
                            // selectedCountryCode = newValue!;
                          });
                        },
                        items: <String>["+91", "+1", "+44", "+81"]
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: TextFormField(
                        focusNode: phoneFocusNode,
                        controller: phoneNoController,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.phone_android, color: Colors.blue),
                          hintText: "Mobile Number",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: w*0.05),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: w * 0.1),
                child: TextFormField(
                  focusNode: passwordFocusNode,
                  controller: passwordController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person,color: Colors.blue,),
                    hintText: "Password",
                  ),
                ),
              ),
              SizedBox(height: w*0.06),
              InkWell(
                onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const GenderChooseIngPage()));
                },
                child: Container(
                  width: w * 0.8,
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
                    child:  CustomText(
                      text: "Create Account",
                      fontSize: w * 0.04,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(width: w*0.1),
              Padding(
                padding:  EdgeInsets.all(w*0.1),
                child: CustomText(
                  text: "Already have an account ? Click Here ",
                  fontSize: w * 0.045,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
                SizedBox(width: w*0.02),
              CustomText(
                text: "for Admin Login",
                fontSize: w * 0.045,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
              SizedBox(width: w*0.02),
              Padding(
                padding: EdgeInsets.all(w*0.02),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>const SignInScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange.shade700,
                    padding: EdgeInsets.symmetric(
                      horizontal: w * 0.15,
                      vertical: w * 0.02,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(w*0.02),
                    ),
                  ),
                  child:  CustomText(
                    text: "SIGN IN ",
                    fontSize: w * 0.025,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: w*0.02),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: w*0.05),
                child: CustomText(
                  text: "By creating an account,you are agree to our Terms",
                  fontSize: w * 0.04,
                  color: Colors.grey,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
