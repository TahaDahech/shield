import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shield/presentation/screens/add_profile_screen.dart';
import 'package:shield/presentation/screens/child_dashboard_screen.dart';
import 'package:shield/core/colors/colors.dart';

class AddDevice extends StatelessWidget {
  const AddDevice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryblue4in1,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            titleText(),
            titlePara(),
            textSteps(),
            text1(),
            text2(),
            text3(),
            text4(),
            imageqr(),
            buttonsRow(context),
          ],
        ),
      ),
    );
  }

  Widget titleText() {
    return const Padding(
      padding: EdgeInsets.fromLTRB(50, 50, 50, 20),
      child: Text(
        'Please add your child’s devices',
        style: TextStyle(color: Colors.white, fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget titlePara() {
    return const Padding(
      padding: EdgeInsets.fromLTRB(20.0, 0, 20, 30),
      child: Text(
        'The information from your child’s device will help us to assess their mental health, duration of sleep, places visited, used applications  etc. It also gives you the ability to block or allow installed applications',
        style: TextStyle(color: Colors.white, fontSize: 15),
        textAlign: TextAlign.left,
      ),
    );
  }

  Widget textSteps() {
    return const Row(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(20.0, 0, 20, 0),
          child: Text(
            'Please follow the following steps:',
            style: TextStyle(color: Colors.white, fontSize: 18),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }

  Widget text1() {
    return const Row(
      children: [
        Flexible(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20.0, 0, 20, 0),
            child: Text(
              '1. Bring your child’s mobile phone',
              style: TextStyle(color: Colors.white, fontSize: 18),
              textAlign: TextAlign.justify,
            ),
          ),
        ),
      ],
    );
  }

  Widget text2() {
    return const Row(
      children: [
        Flexible(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20.0, 0, 20, 0),
            child: Text(
              '2. Scan this QR code with your child’s device camera',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
      ],
    );
  }

  Widget text3() {
    return const Row(
      children: [
        Flexible(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20.0, 0, 20, 0),
            child: Text(
              '3. You will be redirected to the 4IN shield application download page',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
      ],
    );
  }

  Widget text4() {
    return const Row(
      children: [
        Flexible(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20.0, 0, 20, 0),
            child: Text(
              '4. Once the application is installed, click Next ',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
      ],
    );
  }

  Widget imageqr() {
    return Image.asset(
      'assets/images/qr.png',
      width: 200,
      height: 170,
    );
  }

  Widget buttonsRow(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        skipButton(context),
        const Spacer(),
        signInButton(context),
        const Spacer(),
      ],
    );
  }

  Widget skipButton(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 50, 20, 10),
      height: 50,
      width: 120,
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
          'Skip ',
          style: TextStyle(
              color: AppColors.primaryblue4in1,
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget signInButton(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 50, 20, 10),
      height: 50,
      width: 120,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddProfile()),
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
              'Next ',
              style: TextStyle(
                  color: AppColors.primaryblue4in1,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
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
