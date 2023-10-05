import 'package:flutter/material.dart';

import '../../shared/shared_widgets/settings_button.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  static const routeName = "/settings";

  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * .15,
          left: MediaQuery.of(context).size.width * .03,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Settings",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: height * .015,
            ),
            const Text(
              "Account",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: height * .015,
            ),
            SettingsButton(
              Icons.lock,
              Icons.arrow_forward_ios,
              "Change Password",
              () {
                // Navigator.pushReplacement(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const ChangePassword(),
                //   ),
                // );
              },
            ),
            SettingsButton(
              Icons.email,
              Icons.email,
              "Change Email",
              () {},
            ),
            // SettingsButton(
            //   Icons.language_outlined,
            //   Icons.language_outlined,
            //   "Change Language",
            //   () {},
            // ),
            SettingsButton(
              Icons.back_hand,
              Icons.arrow_forward_ios,
              "Privacy Setting",
              () {},
            ),
            SettingsButton(
              Icons.exit_to_app,
              Icons.arrow_forward_ios,
              "Log Out",
              () {},
            ),
          ],
        ),
      ),
    );
  }
}
