// <<<<<<< HEAD

// import 'package:comma_app/screens/home_screen/home_screen.dart';
// import 'package:comma_app/screens/login_screen/login_screen.dart';
// =======
// // import 'package:comma_app/home_screen.dart';
// import 'package:comma_app/screens/settings_screen/settings_screen.dart';
// import 'package:comma_app/screens/tasks_screen/tasks_screen.dart';
// import 'package:comma_app/screens/users_screen/users_screen.dart';
// >>>>>>> 46cbd4d9a736d40b4b78d3372cf4497cab9df1ce
// import 'package:flutter/material.dart';
// import 'package:device_preview/device_preview.dart';

import 'package:comma_app/screens/login_screen/login_screen.dart';
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
//<<<<<<< HEAD
            //home:const HomeScreen(),
            home:const LoginScreen(),
//=======
            // home: SettingsScreen(),
            // home: UsersScreen(),
           // home: TasksScreen(),
//>>>>>>> 46cbd4d9a736d40b4b78d3372cf4497cab9df1ce
          );
        });
  }
}
