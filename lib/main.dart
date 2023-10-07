import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'screens/mange_user_screen/mange_user_screen.dart';

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

            // home:const HomeScreen(),
           // home: const LoginScreen(),
            //   home:const ReportsScreen() ,
            //  home:const ChangePassword() ,
            home:const MangeUserScreen() ,

            // home:const SettingsScreen(),
             //home:const UsersScreen(),
            //  home: const TasksScreen(),
            // home:  const BottomBarScreen(),
            // home:  const ContactUsScreen(),

          );
        });
  }
}
