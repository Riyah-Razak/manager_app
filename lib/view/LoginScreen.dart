import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manager_app/view/StepperScreen.dart';

import '../controllers/LoginController.dart';

class LoginScreen extends StatelessWidget {

  final LoginController loginController = Get.put(LoginController());
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTopContainer(),
              _buildLoginText(),
              _buildSubText(),
              _buildEmailInput(),
              _buildLoginButton(),
              // _buildOrText(),
              // _buildSocialIcons(),
            ],
          ),
        ),
      ),
    );
  }


  Widget _buildLoginText() {
    return const Padding(padding: EdgeInsets.only(left: 28, top: 20),
      child: Text(
        'Login',
        style: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Color(0xFF111111),
          height: 1.5,
          letterSpacing: 0,
        ),
        textAlign: TextAlign.left,
      ),);
  }

  Widget _buildTopContainer() {
    return Container(
      width: 390,
      height: 258,
      color: const Color(0xFFED2024),
      child: Stack(
        children: [
          Positioned(
            top: 55,
            left: 70,
            child: Image.asset(
              'assets/manager_app_logo.png', // Add your image asset path here
              width: 230,
              height: 150,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSubText() {
    return const Padding(padding: EdgeInsets.only(left: 29, top: 6),
      child: Text(
        'With us to treat queens',
        style: TextStyle(
            fontWeight: FontWeight.w400,
            fontFamily: 'Poppins',
            fontSize: 14,
            color: Color(0xFF111111),
            letterSpacing: 0,
            height: 1.5
        ),
        textAlign: TextAlign.left,
      ),);
  }

  Widget _buildEmailInput() {
    return Padding(padding: const EdgeInsets.only(left: 28, top:35,right: 28),
      child: Container(
        width: 332,
        height: 50,
        decoration: BoxDecoration(
          color: const Color(0xFFEAEAEA),
          borderRadius: BorderRadius.circular(8),
        ),
        child:  Padding(
          padding: const EdgeInsets.only(left: 17,right: 47),
          child: Center(
            child: TextFormField(
              controller: loginController.textEditingController,
              textAlign: TextAlign.left,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter mobile number or email address';
                }
                // You can add more specific validation logic for email/phone if needed
                return null;
              },
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Mobile Number / Email Id',
                hintStyle: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF111111),
                  letterSpacing: 0,
                  height: 1.5
                ),

              ),
            ),
          ),
        ),
      ),);
  }



  Widget _buildLoginButton() {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: GestureDetector(
        onTap: () {
          // Navigation logic
          Get.to(() => StepperScreen());
        },
        child: Center(
          child: Container(
            width: 160,
            height: 45,
            decoration: BoxDecoration(
              color: const Color(0xFFED2024),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Center(
              child: Text(
                'LOGIN',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  color: Color(0xFFFFFFFF),
                  height: 1.5,
                  letterSpacing: 0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
  // Widget _buildOrText() {
  //   return Padding(
  //     padding: const EdgeInsets.only(top:15),
  //     child: Center(
  //       child: Container(
  //         width: 17,
  //         height: 21,
  //         decoration: BoxDecoration(
  //           borderRadius: BorderRadius.circular(8),
  //         ),
  //         child: const Center(
  //           child: Text(
  //             'Or',
  //             style: TextStyle(
  //               fontFamily: 'Poppins',
  //               fontSize: 16,
  //               fontWeight: FontWeight.w400,
  //               color: Color(0xFF111111), // Text color
  //               letterSpacing: 0,
  //               height: 1.5,
  //             ),
  //             textAlign: TextAlign.left,
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }

  // Widget _buildSocialIcons() {
  //   return Padding(
  //     padding: const EdgeInsets.only(top:5),
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       children: [
  //         _buildSocialIcon('assets/google.jpeg',40),
  //         const SizedBox(width: 16),
  //         _buildSocialIcon('assets/facebook.jpeg',29),
  //         const SizedBox(width: 16),
  //         _buildSocialIcon('assets/instagram.jpeg',29),
  //       ],
  //     ),
  //   );
  // }
  // Widget _buildSocialIcons() {
  //   return Padding(
  //     padding: const EdgeInsets.only(top: 5),
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       children: [
  //         _buildSocialIcon('assets/google.jpeg', 40),
  //         const Spacer(), // Add Spacer to create space
  //         _buildSocialIcon('assets/facebook.jpeg', 29),
  //         const Spacer(), // Add Spacer to create space
  //         _buildSocialIcon('assets/instagram.jpeg', 29),
  //       ],
  //     ),
  //   );
  // }
  //
  // Widget _buildSocialIcon(String imagePath, double size) {
  //   return Container(
  //     width: size,
  //     height: size,
  //     decoration: BoxDecoration(
  //       image: DecorationImage(
  //         image: AssetImage(imagePath),
  //         fit: BoxFit.cover,
  //       ),
  //       borderRadius: BorderRadius.circular(size / 2), // Make it circular
  //     ),
  //   );
  // }
}

