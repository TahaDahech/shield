import 'package:flutter/material.dart';
import 'package:shield/presentation/screens/child_dashboard_screen.dart';
import 'package:shield/core/colors/colors.dart';

class CongratsWizardEnd extends StatelessWidget {
  const CongratsWizardEnd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryblue4in1,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            titleText(),
            imageShield(),
            dashboardButton(context),
          ],
        ),
      ),
    );
  }

  Widget titleText() {
    return const Padding(
      padding: EdgeInsets.fromLTRB(50, 100, 50, 100),
      child: Text(
        'Thank you for your confidence in us.',
        style: TextStyle(
            color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget imageShield() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Image.asset(
        'assets/images/shield.png',
        width: 250,
        height: 250,
      ),
    );
  }

  Widget dashboardButton(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 100, 20, 10),
      height: 50,
      width: 200,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ChildDashboard()),
          );
        },
        style: ElevatedButton.styleFrom(
          surfaceTintColor: Colors.white,
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: const BorderSide(color: Colors.transparent),
          ),
        ),
        child: const Row(
          children: [
            Text(
              'Go to dashboard ',
              style: TextStyle(
                color: AppColors.primaryblue4in1,
                fontSize: 16,
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios_rounded,
              color: AppColors.primaryblue4in1,
              size: 18,
            ),
          ],
        ),
      ),
    );
  }
}
