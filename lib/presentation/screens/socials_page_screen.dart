import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shield/core/colors/colors.dart';

class SocialsPage extends StatelessWidget {
  const SocialsPage({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryblue4in1,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            imagedashboard(),
            customCardItem(),
          ],
        ),
      ),
    );
  }

  Widget imagedashboard() {
    return Padding(
      padding: const EdgeInsets.only(top: 50.0, bottom: 20),
      child: Center(child: Image.asset('assets/images/sleep1.png')),
    );
  }

  Widget customCardItem() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Card(
        surfaceTintColor: Colors.white,
        color: Colors.white,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Last social media activites',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(height: 20),
              _buildEvents('assets/images/profile2.png', 'Rebecca Morgan',
                  'Mama always said life was like a box of chocolates. You never know what…'),
              const SizedBox(height: 20),
              _buildEvents('assets/images/profile1.png', 'Justin Holmes',
                  'Mama always said life was like a box of chocolates. You never know what…')
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildEvents(String asset, String title, String value) {
    return SizedBox(
      height: 100,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(asset, height: 40, width: 40),
                    ),
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Expanded(
                  child: SingleChildScrollView(
                    child: Text(
                      value,
                      textAlign: TextAlign.left,
                      style: const TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 2,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
        ],
      ),
    );
  }
}
