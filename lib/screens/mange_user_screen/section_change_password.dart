import 'package:comma_app/constants/constants.dart';
import 'package:comma_app/shared/shared_widgets/field_components.dart';
import 'package:flutter/material.dart';

class SectionChangePawword extends StatefulWidget {
  const SectionChangePawword({super.key});

  @override
  State<SectionChangePawword> createState() => _SectionChangePawwordState();
}

class _SectionChangePawwordState extends State<SectionChangePawword> {
    GlobalKey<FormState>? form;
  late bool hideOldPass;
  late bool hideNewPass;
  late bool hideConfirmPass;
  late FocusNode passwordNode, confirmPasswordNode;
  @override
  void initState() {
    super.initState();
  form = GlobalKey<FormState>();
    hideOldPass = true;
    hideNewPass = true;
    hideConfirmPass = true;
    passwordNode = FocusNode();
    confirmPasswordNode = FocusNode();
  }
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return  Form(
      key: form,
      child: Container(
                  padding: EdgeInsets.only(top: height * 0.01),
                  height: height * 0.45,
                  width: width * 0.9,
                  decoration: BoxDecoration(
                      color: Constants.kBlueLightColor.withOpacity(0.09),
                      borderRadius: BorderRadius.circular(25)),
                  child: Column(children: [
                    Center(
                        child: Text(
                      'Change Password',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Constants.kBlackColor,
                          fontSize: 22),
                    )),
                    const Divider(),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    SizedBox(
                      width: width * .75,
                      height: height * .08,
                      child: CustomField(
                        onFieldSubmitted: (v) {
                          passwordNode.requestFocus();
                        },
                        onChanged: (v) {
                          //  provider.oldPass = v;
                        },
                        obscureText: hideOldPass,
                        hintText: 'Old Password',
                        textInputAction: TextInputAction.next,
                        suffix: InkWell(
                          onTap: () {
                            setState(() {
                              hideOldPass = !hideOldPass;
                            });
                          },
                          child: (hideOldPass)
                              ? Icon(
                                  Icons.visibility,
                                  color: Colors.grey[700],
                                )
                              : Icon(
                                  Icons.visibility_off,
                                  color: Colors.grey[700],
                                ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return ScaffoldMessenger.of(context)
                                .showSnackBar(
                                  SnackBar(
                                    duration: const Duration(seconds: 3),
                                    content: const Text(
                                      'Can\'t Be Empty ',
                                      maxLines: 3,
                                    ),
                                    backgroundColor: Colors.red[900],
                                  ),
                                )
                                .toString();
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(
                      height: height * .018,
                    ),
                    SizedBox(
                      width: width * .75,
                      height: height * .08,
                      child: CustomField(
                         focusNode: passwordNode,
                        textInputAction: TextInputAction.next,
                        onFieldSubmitted: (v) {
                          confirmPasswordNode.requestFocus();
                        },
                        onChanged: (v) {
                          //  provider.newPass = v;
                        },
                        obscureText: hideNewPass,
                        suffix: InkWell(
                          onTap: () {
                            setState(() {
                              hideNewPass = !hideNewPass;
                            });
                          },
                          child: (hideNewPass)
                              ? Icon(
                                  Icons.visibility,
                                  color: Colors.grey[700],
                                )
                              : Icon(
                                  Icons.visibility_off,
                                  color: Colors.grey[700],
                                ),
                        ),
                        hintText: 'New Password',
                         validator: (value) {
                          if (value == null || value.isEmpty) {
                            return ScaffoldMessenger.of(context)
                                .showSnackBar(
                                  SnackBar(
                                    duration: const Duration(seconds: 3),
                                    content: const Text(
                                      'Can\'t Be Empty ',
                                      maxLines: 3,
                                    ),
                                    backgroundColor: Colors.red[900],
                                  ),
                                )
                                .toString();
                          } else if (value.length < 6) {
                            return ScaffoldMessenger.of(context)
                                .showSnackBar(
                                  SnackBar(
                                    duration: const Duration(seconds: 3),
                                    content: const Text(
                                      "Minimum length 6 character",
                                      maxLines: 3,
                                    ),
                                    backgroundColor: Colors.red[900],
                                  ),
                                )
                                .toString();
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(
                      height: height * .05,
                    ),
                    SizedBox(
                      width: width * .7,
                      height: 50,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Constants.kBlueNewLogoColor,
                        ),
                        child: const Text(
                          'Confirm',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {
                          if (form!.currentState!.validate()) {
                            //    provider.changePass(context);
                          }
                        },
                      ),
                    ),
                    // CustomField(FieldModel(
    
                    // )),
                  ]),
                ),
    );
  }
}