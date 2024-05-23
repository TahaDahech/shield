import 'package:flutter/material.dart';
import 'package:shield/presentation/screens/confirm_profile_screen.dart';
import 'package:shield/core/colors/colors.dart';

class AddProfile extends StatefulWidget {
  const AddProfile({super.key});

  @override
  State<AddProfile> createState() => _AddProfileState();
}

class _AddProfileState extends State<AddProfile> {
  final List<String> SocialsList = [
    'Facebook',
    'Instagram',
    'Youtube',
    'Twitter'
  ];

  String selectedSocial = 'Facebook';
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _networkUrlController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryblue4in1,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            imageSocials(),
            titleText(),
            titlePara(),
            entryDropdown('Social network platform', SocialsList),
            entryField('Social network user name', _userNameController),
            entryField('Social network page URL', _networkUrlController),
            buttonsRow(),
          ],
        ),
      ),
    );
  }

  Widget imageSocials() {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Image.asset(
        'assets/images/socials.png',
        width: 200,
        height: 170,
      ),
    );
  }

  Widget titleText() {
    return const Padding(
      padding: EdgeInsets.fromLTRB(40, 0, 40, 20),
      child: Text(
        'Please enter your child’s social media account information ',
        style: TextStyle(color: Colors.white, fontSize: 22),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget titlePara() {
    return const Padding(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 30),
      child: Text(
        'This information will help us to protect your child from online abusive content and cyberharassment  ',
        style: TextStyle(color: Colors.white, fontSize: 15),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget entryDropdown(String title, List<String> items) {
    return Container(
      height: 50,
      margin: const EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: AppColors.fieldGreyColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: DropdownButton<String>(
        value: selectedSocial,
        isExpanded: true,
        underline: SizedBox.shrink(),
        onChanged: (String? newValue) {
          setState(() {
            selectedSocial = newValue!;
          });
        },
        items: items.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: TextStyle(fontSize: 14, color: AppColors.textGreyColor),
            ),
          );
        }).toList(),
        hint: Text(
          title,
          style: TextStyle(fontSize: 14),
        ),
        dropdownColor: Colors.white,
      ),
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

  Widget buttonsRow() {
    return Row(
      children: [
        const Spacer(),
        skipButton(),
        const Spacer(),
        signInButton(),
        const Spacer(),
      ],
    );
  }

  Widget skipButton() {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 50, 20, 10),
      height: 50,
      width: 120,
      child: ElevatedButton(
        onPressed: () {},
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

  Widget signInButton() {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 50, 20, 10),
      height: 50,
      width: 120,
      child: ElevatedButton(
        onPressed: () {
          if (_userNameController.text.isEmpty ||
              _networkUrlController.text.isEmpty) {
            // Show a message or perform an action indicating that fields are empty.
            // For example, you can display a snackbar.
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Please fill all fields'),
              ),
            );
          } else {
            // Navigate to the ConfirmProfile screen.
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ConfirmProfile()),
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
              'Start ',
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
}
