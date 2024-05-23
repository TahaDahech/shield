import 'package:flutter/material.dart';
import 'package:shield/presentation/screens/space_chose_screen.dart';
import 'package:shield/core/colors/colors.dart';

class SingupScreen extends StatelessWidget {
  SingupScreen({super.key});

  final TextEditingController _controllerUserName = TextEditingController();
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();
  final TextEditingController _controllerConfirmPassword =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryblue4in1,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              icon4in1(),
              titleText(),
              entryField('Username', _controllerUserName),
              entryFieldEmail('Email', _controllerEmail),
              entryFieldPassword('Password', _controllerPassword),
              entryFieldPassword(
                  'Confirm your password', _controllerConfirmPassword),
              textLink('Forgot password?'),
              signUpButton(context),
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

  Widget entryFieldEmail(String title, TextEditingController controller) {
    return Container(
      height: 50,
      margin: const EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
      decoration: BoxDecoration(
        color: AppColors.fieldGreyColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: title,
          hintStyle: const TextStyle(fontSize: 14),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(horizontal: 20),
        ),
      ),
    );
  }

  Widget entryFieldPassword(String title, TextEditingController controller) {
    return Container(
      height: 50,
      margin: const EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
      decoration: BoxDecoration(
        color: AppColors.fieldGreyColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.visiblePassword,
        obscureText: true,
        decoration: InputDecoration(
          hintText: title,
          hintStyle: const TextStyle(fontSize: 14),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(horizontal: 20),
        ),
      ),
    );
  }

  Widget signUpButton(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 20, 20, 10),
      height: 50,
      width: 150,
      child: ElevatedButton(
        onPressed: () {
          if (_controllerUserName.text.isEmpty ||
              _controllerEmail.text.isEmpty ||
              _controllerPassword.text.isEmpty ||
              _controllerConfirmPassword.text.isEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Please fill all fields'),
              ),
            );
          } else {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SpaceChoseScreen()),
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
              'Sign in ',
              style: TextStyle(
                color: AppColors.primaryblue4in1,
                fontSize: 18,
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

  Widget textLink(text) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(22, 10, 20, 10),
      child: GestureDetector(
        onTap: () {},
        child: const Row(
          children: [
            Text.rich(
              style: TextStyle(color: Colors.white),
              TextSpan(
                text: 'I hereby accept ',
                style: TextStyle(fontSize: 14, color: Colors.white),
                children: <TextSpan>[
                  TextSpan(
                    text: 'terms and conditions',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
