import 'package:flutter/material.dart';
import 'package:shield/presentation/screens/add_device_screen.dart';
import 'package:shield/core/colors/colors.dart';

class Bienvenu extends StatelessWidget {
  const Bienvenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryblue4in1,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            titleText(),
            imageChatting(),
            signInButton(context),
          ],
        ),
      ),
    );
  }

  Widget titleText() {
    return const Padding(
      padding: EdgeInsets.all(50.0),
      child: Text(
        'Welcom to 4IN Shield',
        style: TextStyle(color: Colors.white, fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget imageChatting() {
    return Image.asset(
      'assets/images/chatting.png',
      width: 400,
      height: 400,
    );
  }

  Widget signInButton(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 50, 20, 10),
      height: 50,
      width: 150,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddDevice()),
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
              'Start ',
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
