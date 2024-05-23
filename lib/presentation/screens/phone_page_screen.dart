import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shield/core/colors/colors.dart';

class PhonePage extends StatefulWidget {
  @override
  _PhonePageState createState() => _PhonePageState();
}

class _PhonePageState extends State<PhonePage> {
  TextEditingController _searchController = TextEditingController();
  bool _isSwitchOn = false;
  bool _isSwitchOnCamera = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryblue4in1.withOpacity(0.2),
      body: Column(
        children: [
          entryField("Search", _searchController),
          Divider(color: Colors.white, thickness: 1),
          line1(),
          line2(),
        ],
      ),
    );
  }

  Widget entryField(String title, TextEditingController controller) {
    return Container(
      height: 50,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: AppColors.secondaryblue4in1,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Icon(Icons.search, color: Colors.white),
          ),
          Expanded(
            child: TextField(
              controller: controller,
              decoration: const InputDecoration(
                hintText: '',
                hintStyle: TextStyle(
                  fontSize: 14,
                ),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget line1() {
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/images/google1.png', width: 40, height: 40),
              const Text(
                'Google Chrome',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Text(_isSwitchOn ? 'On' : 'Off',
                    style: TextStyle(fontSize: 16, color: Colors.white)),
              ),
              Switch(
                value: _isSwitchOn,
                onChanged: (value) {
                  setState(() {
                    _isSwitchOn = value;
                  });
                },
                activeColor: Colors.green,
                inactiveThumbColor: Colors.white,
                inactiveTrackColor: AppColors.secondaryblue4in1,
                trackOutlineColor: MaterialStateProperty.resolveWith(
                  (final Set<MaterialState> states) {
                    if (states.contains(MaterialState.selected)) {
                      return null;
                    }

                    return Colors.transparent;
                  },
                ),
              ),
            ],
          ),
        ),
        Divider(color: Colors.grey, thickness: 0.5),
      ],
    );
  }

  Widget line2() {
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/images/camera.png', width: 40, height: 40),
              const Text(
                'Camera',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Text(_isSwitchOnCamera ? 'On' : 'Off',
                    style: TextStyle(fontSize: 16, color: Colors.white)),
              ),
              Switch(
                value: _isSwitchOnCamera,
                onChanged: (value) {
                  setState(() {
                    _isSwitchOnCamera = value;
                  });
                },
                activeColor: Colors.green,
                inactiveThumbColor: Colors.white,
                inactiveTrackColor: AppColors.secondaryblue4in1,
                trackOutlineColor: MaterialStateProperty.resolveWith(
                  (final Set<MaterialState> states) {
                    if (states.contains(MaterialState.selected)) {
                      return null;
                    }

                    return Colors.transparent;
                  },
                ),
              ),
            ],
          ),
        ),
        Divider(color: Colors.grey, thickness: 0.5),
      ],
    );
  }
}
