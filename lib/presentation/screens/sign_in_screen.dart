import 'package:flutter/material.dart';
import 'package:shield/presentation/screens/space_chose_screen.dart';
import 'package:shield/core/colors/colors.dart';

class SingInScreen extends StatelessWidget {
  SingInScreen({super.key});

  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();
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
              _entryFieldEmail('Username', _controllerEmail),
              _entryFieldPassword('Password', _controllerPassword),
              signInButton(context),
              textLink('Forgot password?'),
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

  Widget _entryFieldEmail(String title, TextEditingController controller) {
    return Container(
      height: 50,
      margin: const EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
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

  Widget _entryFieldPassword(String title, TextEditingController controller) {
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

  Widget signInButton(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 50, 20, 10),
      height: 50,
      width: 150,
      child: ElevatedButton(
        onPressed: () {
          if (_controllerEmail.text.isEmpty ||
              _controllerPassword.text.isEmpty) {
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
                fontWeight: FontWeight.bold,
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
      padding: const EdgeInsets.all(22),
      child: GestureDetector(
        onTap: () {},
        child: Row(
          children: [
            Text(
              text,
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontSize: 14.0,
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
