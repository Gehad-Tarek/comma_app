import 'package:comma_app/constants/constants.dart';
import 'package:flutter/material.dart';

class SettingsButton extends StatelessWidget {
  String name;
  IconData icon1;
  IconData icon2;
  Function() onPressed;

  SettingsButton(this.icon1, this.icon2, this.name, this.onPressed, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .08,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          InkWell(
            onTap: onPressed,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      icon1,
                      color:  Constants.kBlueNewLogoColor,
                      size: 22,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .035,
                    ),
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color:  Constants.kBlueNewLogoColor,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * .1,
            ),
          ),
          Divider(
            height: 10,
            color: Colors.grey[400],
          ),
        ],
      ),
    );
  }
}
