import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constants/constants.dart';

class ContactUsScreen extends StatelessWidget {
  // const ContactUsScreen({super.key});
  final List<Map<String, dynamic>> contactUsSections = [
    {
      'color': Colors.red,
      'text': 'Complaint',
      'icon': IconData(0xe6cc, fontFamily: 'MaterialIcons')
    },
    {
      'color': Constants.kBlueNewLogoColor,
      'text': 'Inquiry Or Request',
      'icon': IconData(0xee78, fontFamily: 'MaterialIcons')
    },
    {
      'color': Colors.amber,
      'text': 'Suggestion',
      'icon': IconData(0xf01d1, fontFamily: 'MaterialIcons')
    },
    {
      'color': Constants.kGreenBoldColor,
      'text': 'Thanks',
      'icon': IconData(0xf4a9, fontFamily: 'MaterialIcons')
    },
  ];

  //
  // static const IconData warning_rounded =
  //     IconData(0xf02a1, fontFamily: 'MaterialIcons');
  // static const IconData warning_amber =
  //     IconData(0xe6cc, fontFamily: 'MaterialIcons');
  // static const IconData star_outline_rounded =
  //     IconData(0xf01d1, fontFamily: 'MaterialIcons');
  // static const IconData announcement_outlined =
  //     IconData(0xee78, fontFamily: 'MaterialIcons');
  // static const IconData announcement_sharp =
  //     IconData(0xe786, fontFamily: 'MaterialIcons');
  // static const IconData announcement_rounded =
  //     IconData(0xf565, fontFamily: 'MaterialIcons');
  // static const IconData announcement =
  //     IconData(0xe087, fontFamily: 'MaterialIcons');
  // static const IconData textsms_rounded =
  //     IconData(0xf0227, fontFamily: 'MaterialIcons');
  // static const IconData textsms_outlined =
  //     IconData(0xf435, fontFamily: 'MaterialIcons');
  // static const IconData textsms = IconData(0xe652, fontFamily: 'MaterialIcons');
  // static const IconData volunteer_activism_sharp =
  //     IconData(0xedbc, fontFamily: 'MaterialIcons');
  // static const IconData volunteer_activism_rounded =
  //     IconData(0xf029b, fontFamily: 'MaterialIcons');
  // static const IconData volunteer_activism_outlined =
  //     IconData(0xf4a9, fontFamily: 'MaterialIcons');
  // static const IconData volunteer_activism =
  //     IconData(0xe6c6, fontFamily: 'MaterialIcons');
  // static const IconData sms_failed_outlined =
  //     IconData(0xf3ac, fontFamily: 'MaterialIcons');
  // static const IconData quiz_outlined =
  //     IconData(0xf2e2, fontFamily: 'MaterialIcons');
  // static const IconData message_outlined =
  //     IconData(0xf1c6, fontFamily: 'MaterialIcons');

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffF6F8FA),
        leading: InkWell(
          onTap: () {},
          child: Icon(Icons.arrow_back_ios,
              color: Constants.kBlueNewLogoColor, size: width * 0.08),
        ),
        title: Center(
          child: Text("Contact Us",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Constants.kBlueNewLogoColor)),
        ),
        actions: [
          Icon(
            Icons.info_outline,
            color: Constants.kBlueNewLogoColor,
            size: width * 0.08,
          ),
          SizedBox(
            width: width * 0.03,
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          height: height,
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  width: width,
                  padding: EdgeInsets.symmetric(
                      horizontal: width * 0.04, vertical: height * 0.02),
                  color: Color(0xffF6F8FA),
                  child: ListView(
                    children: [
                      Text("Hello, we are here to solve your problem!",
                          style: TextStyle(
                            color: Constants.kBlueNewLogoColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          )),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Text("Few Seconds and you will got response",
                          style: TextStyle(
                              fontSize: 14, color: Constants.kBlueNewLogoColor))
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: height * 0.02),
                child: Text("Choose the message you want to start with:",
                    style: TextStyle(
                        fontSize: 16,
                        color: Constants.kBlueNewLogoColor,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  padding: EdgeInsets.only(
                      top: height * 0.02,
                      bottom: height * 0.03,
                      left: width * 0.06,
                      right: width * 0.06),
                  // padding: EdgeInsets.symmetric(
                  //     horizontal: width * 0.06, vertical: height * 0.04),
                  child: ListView.builder(
                      itemCount: contactUsSections.length,
                      itemBuilder: (BuildContext context, int index) {
                        final item = contactUsSections[index];
                        return Center(
                          child: Container(
                              width: width * 0.85,
                              padding:
                                  EdgeInsets.symmetric(vertical: height * 0.02),
                              margin: EdgeInsets.only(bottom: height * 0.02),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: item['color'], // Shadow color
                                    blurRadius: 4, // Spread of the shadow
                                    offset: Offset(
                                        0, 1), // Offset of the shadow (x, y)
                                  ),
                                ],
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    item['icon'],
                                    color: item['color'],
                                    size: width * 0.08,
                                  ),
                                  SizedBox(
                                    width: width * 0.03,
                                  ),
                                  Text(
                                    item['text'],
                                    style: TextStyle(
                                        color: item['color'], fontSize: 20),
                                  ),
                                ],
                              )),
                        );
                      }),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: height * 0.02),
                child: Text("Or Contact Your Account Manager",
                    style: TextStyle(
                        fontSize: 18,
                        color: Constants.kBlueNewLogoColor,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center),
              ),
              Expanded(
                flex: 1,
                child: Container(
                    width: width,
                    // color: Colors.red,
                    child: Center(
                      child: Container(
                        width: width * 0.85,
                        // height: height * 0.1,
                        padding: EdgeInsets.symmetric(vertical: height * 0.02),
                        margin: EdgeInsets.only(bottom: height * 0.02),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Constants.kBlueNewLogoColor,
                              // Shadow color
                              blurRadius: 4,
                              // Spread of the shadow
                              offset:
                                  Offset(0, 1), // Offset of the shadow (x, y)
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: width * 0.05,
                            ),
                            Text(
                              "Gehad Tarek",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Constants.kBlueNewLogoColor),
                            ),
                            Icon(Icons.call, size: width * 0.08),
                            InkWell(
                              onTap: (){
                                openWhatsAppChat();
                              },
                              child: Image(
                                image: AssetImage(
                                  "assets/images/whatsApp.png",
                                ),
                                width: width * 0.08,
                                height: height * 0.04,
                              ),
                            ),
                            SizedBox(
                              width: width * 0.05,
                            ),
                            // Icon(Icons.call, size: width * 0.08,),
                            // Icon(Icons., color: Colors.purple, size: width * 0.08,)
                          ],
                        ),
                      ),
                    )),
              ),
              SizedBox(
                height: height * 0.05,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

String phoneNumber =
    "+201092425464"; // Replace with the phone number you want to contact.
Future<void> _launchUrl($url) async {
  if (!await launchUrl($url)) {
    throw Exception('Could not launch ');
  }
}
void openWhatsAppChat() async {
  String whatsappUrl = "whatsapp://send?phone=$phoneNumber";
  if (await canLaunchUrl(Uri.parse(whatsappUrl))) {
    await canLaunchUrl(Uri.parse(whatsappUrl));
    print("opened");
  } else {
    // If WhatsApp is not installed, you can open it in the browser.
    String whatsappWebUrl = "https://web.whatsapp.com/send?phone=$phoneNumber";
    if (await canLaunchUrl(Uri.parse(whatsappUrl))) {
      await canLaunchUrl(Uri.parse(whatsappWebUrl));
      print("opened");
    } else {
      // Handle the case where neither the app nor web WhatsApp can be opened.
      print("Could not open WhatsApp.");
    }
  }
}
