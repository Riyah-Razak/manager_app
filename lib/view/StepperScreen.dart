// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import '../controllers/StepperController.dart';
//
// class StepperScreen extends StatelessWidget{
//   final StepperController stepperController = Get.put(StepperController());
//
//   // Define header titles for each step
//   final List<String> headerTitles = [
//     'Personal',
//     'Identity',
//     'Contact',
//     'Review',
//   ];
//
//   // List to track the completion status of each step
//   final List<bool> stepsCompleted = [true, true, false, false];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           _buildHeaderText(),
//           _buildHorizontalStepper(),
//         ],
//       ),
//     );
//   }
//   Widget _buildHeaderText() {
//     String headerText = '';
//     switch (stepperController.currentStep.value) {
//       case 0:
//         headerText = 'Personal';
//         break;
//       case 1:
//         headerText = 'Identity';
//         break;
//       case 2:
//         headerText = 'Contact';
//         break;
//       case 3:
//         headerText = 'Review';
//         break;
//       default:
//         headerText = '';
//     }
//
//     return Padding(
//       padding: const EdgeInsets.only(top: 50, left: 30),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             headerText,
//             style: const TextStyle(
//               fontFamily: 'Poppins',
//               fontSize: 30,
//               fontWeight: FontWeight.w700,
//               color: Color(0xFF111111),
//               height: 1.5,
//               letterSpacing: 0,
//             ),
//             textAlign: TextAlign.left,
//           ),
//           const SizedBox(height: 10),
//           Text(
//             _getContentText(),
//             style: const TextStyle(
//               fontFamily: 'Poppins',
//               fontSize: 14,
//               fontWeight: FontWeight.w400,
//               color: Color(0xFF111111),
//               height: 1.5,
//               letterSpacing: 0,
//             ),
//             textAlign: TextAlign.left,
//           ),
//         ],
//       ),
//     );
//   }
//
//
//   String _getContentText() {
//     switch (stepperController.currentStep.value) {
//       case 0:
//         return 'Complete your personal details';
//       case 1:
//         return 'Provide your identity information';
//       case 2:
//         return 'Enter your contact details';
//       case 3:
//         return 'Review and confirm your information';
//       default:
//         return '';
//     }
//   }
//
//   Widget _buildHorizontalStepper() {
//     return Expanded(
//       child: Column(
//         children: [
//           const SizedBox(height: 25), // Adding space from the top
//           Padding(
//             padding: const EdgeInsets.only(left:29, right:29), // Adding left padding
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 _buildStep(1),
//                 _buildLine(0),
//                 _buildStep(2),
//                 _buildLine(1),
//                 _buildStep(3),
//                 _buildLine(2),
//                 _buildStep(4),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildStep(int stepNumber) {
//     final int stepIndex = stepNumber - 1; // Adjust index since steps start from 1
//     final bool isActive = stepperController.currentStep.value == stepIndex;
//     final bool isCompleted = stepsCompleted[stepIndex];
//
//     return GestureDetector(
//       onTap: () {
//         stepperController.currentStep.value = stepIndex;
//       },
//       child: Column(
//         children: [
//           Container(
//             width: 20,
//             height: 20,
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: isCompleted ? const Color(0xFFBA2026) : const Color(0xFFEDEDED),
//               border: Border.all(color: Colors.transparent),
//             ),
//             child: Center(
//               child: Text(
//                 stepNumber.toString(),
//                 style: const TextStyle(
//                   color: Color(0xFFFFFFFF), // Change color if needed
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildLine(int stepIndex) {
//     final bool isCompleted = stepsCompleted[stepIndex];
//
//     return Container(
//       height: 2,
//       width:40, // Adjust width as needed
//       color: isCompleted ? const Color(0xFFBA2026) : const Color(0xFFEDEDED),
//     );
//   }
//
//
// }