
import 'package:comma_app/screens/home_screen/home_screen.dart';
import 'package:comma_app/screens/login_screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DevicePreview(
        enabled: true,
        builder: (BuildContext context) {
          return MaterialApp(
            useInheritedMediaQuery: true,
            builder: DevicePreview.appBuilder,
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            //home:const HomeScreen(),
            home:const LoginScreen(),
          );
        });
  }
}
