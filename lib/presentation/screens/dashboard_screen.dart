import 'package:flutter/material.dart';
import 'package:shield/core/colors/colors.dart';

class DashboardPage extends StatefulWidget {
  DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  String _selectedOption = 'Day';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          childInfo(),
          selectionSection(),
          buildCardContent(),
          customCardItem(),
        ],
      ),
    );
  }

  Widget childInfo() {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/images/girl.png',
                width: 80,
                height: 80,
              ),
            ],
          ),
          const Row(
            children: [
              Text(
                'First name Last name',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ],
          ),
          const Row(
            children: [
              Text(
                'AGE',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget selectionSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildButton('Month'),
          _buildButton('Week'),
          _buildButton('Day'),
        ],
      ),
    );
  }

  Widget _buildButton(String title) {
    bool isSelected = _selectedOption == title;
    return GestureDetector(
      onTap: () => _setSelectedOption(title),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        decoration: BoxDecoration(
          color: isSelected ? Colors.white : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
          border: isSelected
              ? Border.all(color: AppColors.primaryblue4in1, width: 2)
              : null,
        ),
        child: Text(
          title,
          style: TextStyle(
            color: isSelected ? AppColors.primaryblue4in1 : Colors.grey,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }

  void _setSelectedOption(String option) {
    setState(() {
      _selectedOption = option;
    });
  }

  Widget buildCardContent() {
    switch (_selectedOption) {
      case 'Month':
        return otherCardItem('This is the Month info');
      case 'Week':
        return otherCardItem('This is the Week info');
      case 'Day':
        return dayInfo();
      default:
        return Text('No info available');
    }
  }

  Widget dayInfo() {
    return GridView.count(
      childAspectRatio: 100 / 70,
      shrinkWrap: true,
      crossAxisCount: 2, // 2 items per row
      crossAxisSpacing: 20, // spacing between columns
      mainAxisSpacing: 20, // spacing between rows
      padding: EdgeInsets.all(20), // optional padding
      children: [
        _buildCard('Danger Level', 'High', AppColors.primaryRed),
        _buildCard('Last night Sleep duration', '8h', Colors.grey),
        _buildCard('Device usage', '4h', Colors.grey),
        _buildCard('Phone call duration', '4h', Colors.grey),
      ],
    );
  }

  Widget _buildCard(String title, String value, Color valueColor) {
    return Card(
      surfaceTintColor: Colors.white,
      color: Colors.white,
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 14),
            ),
            Spacer(),
            Text(
              value,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: valueColor),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }

  Widget _buildEvents(String title, String value) {
    return SizedBox(
      height: 100,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    color: AppColors.primaryRed,
                  ),
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

  Widget otherCardItem(String info) {
    return Card(
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
            Text(
              info,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
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
                'Last Alerts',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(height: 20),
              _buildEvents('Toxic comment!',
                  'Mama always said life was like a box of chocolates. You never know what…'),
              const SizedBox(height: 20),
              _buildEvents('Sleep depreviation!',
                  'Mama always said life was like a box of chocolates. You never know what…')
            ],
          ),
        ),
      ),
    );
  }
}
