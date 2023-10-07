import '../../constants/constants.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late GlobalKey<ScaffoldState> scaffold;
  GlobalKey<FormState>? form;

  @override
  void initState() {
    super.initState();
    form = GlobalKey<FormState>();
    scaffold = GlobalKey<ScaffoldState>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // body: Consumer<SignInProvider>(
      //     builder: ((context, provider, _) => SafeArea(
      //           child:
      body: Stack(
        children: [
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                        child: Image.asset(
                      "assets/images/logo comma-01.png",
                      scale: 3.5,
                    )),
                    Form(
                      key: form,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFormField(
                            onChanged: (v) {
                              //  provider.email = v;
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Can\'t Be Empty ';
                              }
                              return null;
                            },
                            cursorColor: Colors.black,
                            style: TextStyle(
                              color:   Constants.kBlueNewLogoColor,
                            ),
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor:
                                  const Color.fromRGBO(128, 128, 128, .25),
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              hintText: 'Email Address',
                              prefixIcon: Icon(
                                Icons.email,
                                color:   Constants.kBlueNewLogoColor,
                              ),
                              hintStyle: const TextStyle(
                                color: Colors.black54,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          TextFormField(
                            onChanged: (v) {
                              //  provider.pass = v;
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Can\'t Be Empty ';
                              }
                              return null;
                            },
                            cursorColor: Colors.black,
                            style: TextStyle(
                               color: Constants.kBlueNewLogoColor,
                            ),
                            textInputAction: TextInputAction.done,
                            obscureText: true,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor:
                                  const Color.fromRGBO(128, 128, 128, .25),
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              hintText: 'Password',
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Constants.kBlueNewLogoColor,
                              ),
                              hintStyle: const TextStyle(
                                color: Colors.black54,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 35,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor:
                              Constants.kBlueNewLogoColor,
                        ),
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {
                          if (form!.currentState!.validate()) {
                            // provider.logIn(context);
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
      //           ))),
    );
  }
}
