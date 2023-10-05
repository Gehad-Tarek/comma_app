import 'package:comma_app/screens/Reports_screen/Reports_screen.dart';
import 'package:comma_app/screens/Tasks_screen/Tasks_screen.dart';
import 'package:comma_app/screens/Users_screen/Users_screen.dart';
import 'package:comma_app/screens/bottom_bar_screen/bottom_bar_screen.dart';
import 'package:comma_app/screens/change_password_screen/change_password.dart';
import 'package:comma_app/screens/contact_us_screen/contact_us_screen.dart';
import 'package:comma_app/screens/home_screen/home_screen.dart';
import 'package:comma_app/screens/login_screen/login_screen.dart';
import 'package:comma_app/screens/mange_user_screen/mange_user_screen.dart';
import 'package:comma_app/screens/settings_screen/settings_screen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

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
// <<<<<<< HEAD
            // home:const HomeScreen(),
            // home: ContactUsScreen(),
            // home:const LoginScreen(),
            // home:const ReportsScreen() ,
            // home:const ChangePassword() ,
            // home:const SettingsScreen(),
            // home:const UsersScreen(),
            // home: const TasksScreen(),
// =======

            // home:const HomeScreen(),
           // home: const LoginScreen(),
            //   home:const ReportsScreen() ,
            //  home:const ChangePassword() ,
            home:const MangeUserScreen() ,

            // home:const SettingsScreen(),
             //home:const UsersScreen(),
            //  home: const TasksScreen(),
            // home:  const BottomBarScreen(),
// >>>>>>> 0161a265af437e9e072b46564961cb5e61e5879d
          );
        });
  }
}
