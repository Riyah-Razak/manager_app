import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/StepperController.dart';

class StepperScreen extends StatelessWidget{
  final StepperController stepperController = Get.put(StepperController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeaderText(),
          _buildHorizontalStepper(),
        ],
      ),
    );
  }

  Widget _buildHeaderText() {
    return Padding(
      padding: const EdgeInsets.only(top:50, left: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Personal',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: Color(0xFF111111),
              height: 1.5,
              letterSpacing: 0,
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 10),
          Text(
            'Complete your personal details',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xFF111111),
              height: 1.5,
              letterSpacing: 0,
            ),
            textAlign: TextAlign.left,

          ),
        ],
      ),
    );
  }

  Widget _buildHorizontalStepper() {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Stepper(
        type: StepperType.horizontal,
        currentStep: stepperController.currentStep.value,
        onStepTapped: (step) {
          stepperController.currentStep.value = step;
        },
        steps: [
          _buildStep(),
          _buildStep(),
          _buildStep(),
          _buildStep(),
        ],
      ),
    );
  }

  Step _buildStep() {
    return const Step(
      title: Text(''), // Empty Text widget
      content: SizedBox.shrink(), // Empty SizedBox to represent no content
      isActive: true, //
    );
  }


}