import 'package:comma_app/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//import '../providers/change_password.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
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
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(46, 182, 231, 100),
        ),
        // body: Consumer<ChangePasswordProvider>(
        //   builder: ((context, provider, _) => 
           body:SingleChildScrollView(
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * .1,
                      ),
                      child: Form(
                        key: form,
                        child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                             const Text(
                                "Change Your Password",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(
                                height: height * .02,
                              ),
                              SizedBox(
                                width: width * .75,
                                height: height * .08,
                                child: TextFormField(
                                  onFieldSubmitted: (v) {
                                    passwordNode.requestFocus();
                                  },
                                  onChanged: (v) {
                                  //  provider.oldPass = v;
                                  },
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                            SnackBar(
                                              duration:
                                                  const Duration(seconds: 3),
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
                                  obscureText: hideOldPass,
                                  cursorColor: Colors.grey[600],
                                  decoration: InputDecoration(
                                    errorStyle: const TextStyle(
                                      height: 0,
                                      color: Colors.transparent,
                                    ),
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
                                    hintText: 'Old Password',
                                    hintStyle: TextStyle(
                                      color: Colors.grey[500],
                                    ),
                                    filled: true,
                                    fillColor: Colors.grey[200],
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        width: 3,
                                        color: Color(0x00d4e5f2),
                                      ),
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        width: 3,
                                        color: Color(0x00bcbcbc),
                                      ),
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                  ),
                                  textInputAction: TextInputAction.next,
                                ),
                              ),
                              SizedBox(
                                height: height * .018,
                              ),
                              SizedBox(
                                width: width * .75,
                                height: height * .08,
                                child: TextFormField(
                                  onChanged: (v) {
                                  //  provider.newPass = v;
                                  },
                                  focusNode: passwordNode,
                                  obscureText: hideNewPass,
                                  cursorColor: Colors.grey[600],
                                  decoration: InputDecoration(
                                    errorStyle: const TextStyle(
                                      height: 0,
                                      color: Colors.transparent,
                                    ),
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
                                    hintStyle: TextStyle(
                                      color: Colors.grey[500],
                                    ),
                                    filled: true,
                                    fillColor: Colors.grey[200],
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        width: 3,
                                        color: Color(0x00d4e5f2),
                                      ),
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        width: 3,
                                        color: Color(0x00bcbcbc),
                                      ),
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                  ),
                                  textInputAction: TextInputAction.next,
                                  onFieldSubmitted: (v) {
                                    confirmPasswordNode.requestFocus();
                                  },
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                            SnackBar(
                                              duration:
                                                  const Duration(seconds: 3),
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
                                              duration:
                                                  const Duration(seconds: 3),
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
                                    backgroundColor:  Constants.kBlueNewLogoColor,
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
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              );
       // )
       // );
  }
}
