import 'package:flutter/material.dart';

class DemoStepper extends StatefulWidget {
  const DemoStepper({super.key});

  @override
  State<DemoStepper> createState() => _DemoStepperState();
}

class _DemoStepperState extends State<DemoStepper> {
  int _currentStep = 0;

  List<Step> stepList() => [
        Step(
            title: const Text('Account'),
            isActive: _currentStep >= 0,
            state: _currentStep <= 0 ? StepState.editing : StepState.complete,
            content: Column(
              children: [
                TextField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Email'),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Password'))
              ],
            )),
        Step(
            title: Text('Address'),
            isActive: _currentStep >= 1,
            state: _currentStep <= 1 ? StepState.editing : StepState.complete,
            content: Column(
              children: [
                TextField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Address'),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                    keyboardType: TextInputType.number,
                    maxLength: 6,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Pin Code'))
              ],
            )),
        Step(
            title: Text('Confirm'),
            isActive: _currentStep >= 2,
            state: StepState.complete,
            content: Center(
              child: Text('Confirm'),
            ))
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff1D1E22),
        title: const Text('Stepper', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Stepper(
        steps: stepList(),
        type: StepperType.horizontal,
        elevation: 0,
        currentStep: _currentStep,
        onStepContinue: () {
          if (_currentStep < (stepList().length - 1)) {
            setState(() {
              _currentStep += 1;
            });
          }
        },
        onStepCancel: () {
          if (_currentStep > 0) {
            setState(() {
              _currentStep -= 1;
            });
          }
        },
      ),
    );
  }
}
