// import 'package:comma_app/home_screen.dart';
import 'package:comma_app/screens/settings_screen/settings_screen.dart';
import 'package:comma_app/screens/tasks_screen/tasks_screen.dart';
import 'package:comma_app/screens/users_screen/users_screen.dart';
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
            // home: SettingsScreen(),
            // home: UsersScreen(),
            home: TasksScreen(),
          );
        });
  }
}
