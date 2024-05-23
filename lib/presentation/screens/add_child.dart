import 'package:flutter/material.dart';
import 'package:shield/presentation/screens/child_dashboard_screen.dart';
import 'package:shield/presentation/screens/congrats_wizard_screen.dart';
import 'package:shield/core/colors/colors.dart';

class AddChild extends StatelessWidget {
  AddChild({super.key});

  final TextEditingController _controllerFirstName = TextEditingController();
  final TextEditingController _controllerLastName = TextEditingController();
  final TextEditingController _controllerGender = TextEditingController();
  final TextEditingController _controllerBirthdate = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryblue4in1,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            imageSocials(),
            titleText(),
            entryField('First name', _controllerFirstName),
            entryField('Last name', _controllerLastName),
            entryField('Gender', _controllerGender),
            entryField('Birth date', _controllerBirthdate),
            buttonsRow(context),
          ],
        ),
      ),
    );
  }

  Widget entryField(String title, TextEditingController controller) {
    return Container(
      height: 50,
      margin: const EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
      decoration: BoxDecoration(
        color: AppColors.fieldGreyColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: title,
          hintStyle: const TextStyle(fontSize: 14),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(horizontal: 20),
        ),
      ),
    );
  }

  Widget titleText() {
    return const Padding(
      padding: EdgeInsets.fromLTRB(50, 0, 50, 30),
      child: Text(
        'Please enter the required information to complete your child’s profile',
        style: TextStyle(color: Colors.white, fontSize: 22),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget imageSocials() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Image.asset(
        'assets/images/kids.png',
        width: 280,
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
        child: const Text(
          'Skip',
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
          if (_controllerFirstName.text.isNotEmpty &&
              _controllerLastName.text.isNotEmpty &&
              _controllerGender.text.isNotEmpty &&
              _controllerBirthdate.text.isNotEmpty) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CongratsWizard()),
            );
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Please fill all fields'),
              ),
            );
          }
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
              'Next',
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
