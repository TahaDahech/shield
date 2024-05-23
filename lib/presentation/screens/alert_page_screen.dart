import 'package:flutter/material.dart';

class AlertsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return imagedashboard();
  }

  Widget imagedashboard() {
    return Container(
      height: 400,
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
      child: Image.asset('assets/images/sleep2.png'),
    );
  }
}
