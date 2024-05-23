import 'package:flutter/material.dart';
import 'package:shield/presentation/screens/add_child.dart';
import 'package:shield/presentation/screens/congrats_wizard_End_Screen.dart';
import 'package:shield/core/colors/colors.dart';

class CongratsWizard extends StatelessWidget {
  CongratsWizard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryblue4in1,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            titleText(),
            imageDone(),
            imageCloud(),
            buttonsRow(context),
          ],
        ),
      ),
    );
  }

  Widget titleText() {
    return const Padding(
      padding: EdgeInsets.fromLTRB(50, 100, 50, 30),
      child: Column(
        children: [
          Text(
            'Congradulation! ',
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Text(
            'You have successfully completed you child profile. ',
            style: TextStyle(color: Colors.white, fontSize: 22),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget imageDone() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Image.asset(
        'assets/images/done.png',
        width: 100,
        height: 80,
      ),
    );
  }

  Widget imageCloud() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Image.asset(
        'assets/images/cloudwoman.png',
        width: 340,
        height: 230,
      ),
    );
  }

  Widget buttonsRow(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        skipButton(context),
        const Spacer(),
        continueButton(context),
        const Spacer(),
      ],
    );
  }

  Widget skipButton(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 50, 10, 10),
      height: 50,
      width: 160,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddChild()),
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
        child: const Text(
          'Add a child ',
          style: TextStyle(
            color: AppColors.primaryblue4in1,
            fontSize: 15,
          ),
        ),
      ),
    );
  }

  Widget continueButton(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 50, 20, 10),
      height: 50,
      width: 160,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CongratsWizardEnd()),
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
              'Continue ',
              style: TextStyle(
                color: AppColors.primaryblue4in1,
                fontSize: 15,
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
