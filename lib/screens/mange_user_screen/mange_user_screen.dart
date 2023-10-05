import 'package:comma_app/constants/constants.dart';
import 'package:comma_app/screens/mange_user_screen/section_change_password.dart';
import 'package:comma_app/screens/mange_user_screen/section_information.dart';
import 'package:comma_app/shared/shared_widgets/field_components.dart';
import 'package:flutter/material.dart';

class MangeUserScreen extends StatefulWidget {
  static const routeName = "/mangeUser";
  const MangeUserScreen({super.key});

  @override
  State<MangeUserScreen> createState() => _MangeUserScreenState();
}

class _MangeUserScreenState extends State<MangeUserScreen> {
  GlobalKey<FormState>? form;
  // late bool hideOldPass;
  // late bool hideNewPass;
  // late bool hideConfirmPass;
  // late FocusNode passwordNode, confirmPasswordNode;
  @override
  void initState() {
    super.initState();
    form = GlobalKey<FormState>();
    // hideOldPass = true;
    // hideNewPass = true;
    // hideConfirmPass = true;
    // passwordNode = FocusNode();
    // confirmPasswordNode = FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 20,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Mange Account",
          style: TextStyle(
            color: Constants.kBlueNewLogoColor,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: Form(
        key: form,
        child: Padding(
          padding: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
           
            children: [
              SizedBox(
                height: height * 0.012,
              ),
              const Text(
                'Sales  Account Control',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              SizedBox(
                height: height * 0.02,
              ),
            const  SectionInformation(),
           
              SizedBox(
                height: height * 0.02,
              ),
             const  SectionChangePawword(),
            
            ],
          ),
        ),
      ),
    );
  }
}
