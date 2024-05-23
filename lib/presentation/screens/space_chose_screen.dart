import 'package:flutter/material.dart';
import 'package:shield/presentation/screens/bienvenu_screen.dart';
import 'package:shield/core/colors/colors.dart';

class SpaceChoseScreen extends StatelessWidget {
  SpaceChoseScreen({super.key});

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
              titleText(),
              parentButton(context),
              const SizedBox(height: 20),
              childButton(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget titleText() {
    return const Padding(
      padding: EdgeInsets.all(50.0),
      child: Text(
        'Who is going to use this device?',
        style: TextStyle(color: Colors.white, fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget childButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Bienvenu()),
        );
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            height: 170,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.white, width: 1),
            ),
            child: const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 50.0),
                  child: Text(
                    'Child',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryblue4in1),
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
          Positioned(
            right: 0, // Adjust this value to move the image as needed
            top: -10, // Adjust this value to move the image as needed
            child: Image.asset(
              'assets/images/person2.png',
              width: 160,
              height: 200,
              fit: BoxFit.cover,
              alignment: Alignment.topCenter,
            ),
          ),
        ],
      ),
    );
  }

  Widget parentButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Bienvenu()),
        );
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            height: 170,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.white, width: 1),
            ),
            child: const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 50.0),
                  child: Text(
                    'Parents',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryblue4in1),
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
          Positioned(
            right: 10, // Adjust this value to move the image as needed
            top: -10, // Adjust this value to move the image as needed
            child: Image.asset(
              'assets/images/person1.png',
              width: 150,
              height: 200,
              fit: BoxFit.cover,
              alignment: Alignment.topRight,
            ),
          ),
        ],
      ),
    );
  }
}
