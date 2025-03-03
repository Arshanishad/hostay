import 'package:flutter/material.dart';
import 'package:hostay/features/login/screens/signup_screen.dart';
import '../../../core/common/globals.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController nameController=TextEditingController();
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  TextEditingController mobileController=TextEditingController();

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
          padding:  EdgeInsets.symmetric(vertical:w*0.6 ),
          child: Column(
            children: [
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: w*0.1,),
                child: TextFormField(
                  focusNode: nameFocusNode,
                  controller: nameController,
                  decoration: const InputDecoration(
                    hintText: 'Full name',
                    prefixIcon: Icon(Icons.person,color: Colors.blue,)
                  ),
                ),
              ),
              SizedBox(height: w*0.04),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: w*0.1,),
                child: TextFormField(
                  focusNode: emailFocusNode,
                  controller: emailController,
                  decoration: const InputDecoration(
                      hintText: 'Email',
                      prefixIcon: Icon(Icons.mail,color: Colors.blue,)
                  ),
                ),
              ),
              SizedBox(height: w*0.04),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: w*0.1,),
                child: TextFormField(
                  focusNode: passwordFocusNode,
                  controller: passwordController,
                  decoration: const InputDecoration(
                      hintText: 'Password',
                      prefixIcon: Icon(Icons.lock,color: Colors.blue,)
                  ),
                ),
              ),
              SizedBox(height: w*0.04),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: w*0.1,),
                child: TextFormField(
                  focusNode: phoneFocusNode,
                  controller: mobileController,
                  decoration: const InputDecoration(
                      hintText: 'Mobile',
                      prefixIcon: Icon(Icons.mobile_friendly,color: Colors.blue,)
                  ),
                ),
              ),
              SizedBox(height: w*0.07),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const SignupScreen()));
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
                    child: Text(
                      "Create Account",
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
        ),
      ),
    );
  }
}
