import 'package:flutter/material.dart';
import 'package:shield/presentation/screens/sign_in_screen.dart';
import 'package:shield/presentation/screens/sign_up_screen.dart';
import 'package:shield/core/colors/colors.dart';

class LandingPageScreen extends StatelessWidget {
  const LandingPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryblue4in1,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              icon4in1(),
              titleText(),
              signInEmailButton(context),
              signInGmailButton(context),
              signInFacebookButton(context),
              textLink('Sign up instead', context),
            ],
          ),
        ),
      ),
    );
  }

  Widget icon4in1() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: Image.asset(
          'assets/images/4IN1.png',
          width: 85,
          height: 85,
        ),
      ),
    );
  }

  Widget titleText() {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 60.0),
          child: Text(
            'Welcome to 4In Shield! ',
            style: TextStyle(color: Colors.white, fontSize: 22),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 80.0),
          child: Text(
            'Sign in to continue',
            style: TextStyle(color: Colors.white, fontSize: 22),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  Widget signInEmailButton(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SingInScreen()),
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
              'Sign in with Email',
              style: TextStyle(color: AppColors.primaryblue4in1, fontSize: 18),
            ),
            Spacer(),
            Icon(
              Icons.email_rounded,
              color: Colors.grey,
              size: 20,
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

  Widget signInGmailButton(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SingInScreen()),
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
        child: Row(
          children: [
            const Text(
              'Sign in with Gmail',
              style: TextStyle(color: AppColors.primaryblue4in1, fontSize: 18),
            ),
            const Spacer(),
            Image.asset(
              'assets/images/google.png',
              width: 18,
              height: 18,
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_forward_ios_rounded,
              color: AppColors.primaryblue4in1,
              size: 18,
            ),
          ],
        ),
      ),
    );
  }

  Widget signInFacebookButton(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SingInScreen()),
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
        child: Row(
          children: [
            const Text(
              'Sign in with Facebook',
              style: TextStyle(color: AppColors.primaryblue4in1, fontSize: 18),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(
                'assets/images/facebook.png',
                width: 18,
                height: 18,
              ),
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_forward_ios_rounded,
              color: AppColors.primaryblue4in1,
              size: 18,
            ),
          ],
        ),
      ),
    );
  }

  Widget textLink(String text, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(22),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SingupScreen()),
          );
        },
        child: Row(
          children: [
            Text(
              text,
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontSize: 18.0,
                color: Colors.white,
                decorationColor: Colors.white,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
