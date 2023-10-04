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
         body:        Stack(
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
                                "assets/images/logo.png",
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
                                        color: Colors.blue[600],
                                      ),
                                      textInputAction: TextInputAction.next,
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: const Color.fromRGBO(
                                            128, 128, 128, .25),
                                        border: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        enabledBorder: InputBorder.none,
                                        errorBorder: InputBorder.none,
                                        disabledBorder: InputBorder.none,
                                        hintText: 'Email Address',
                                        prefixIcon: Icon(
                                          Icons.email,
                                          color: Colors.blue[700],
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
                                        color: Colors.blue[600],
                                      ),
                                      textInputAction: TextInputAction.done,
                                      obscureText: true,
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: const Color.fromRGBO(
                                            128, 128, 128, .25),
                                        border: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        enabledBorder: InputBorder.none,
                                        errorBorder: InputBorder.none,
                                        disabledBorder: InputBorder.none,
                                        hintText: 'Password',
                                        prefixIcon: Icon(
                                          Icons.lock,
                                          color: Colors.blue[700],
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
                                        const Color.fromRGBO(48, 144, 206, 1),
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
