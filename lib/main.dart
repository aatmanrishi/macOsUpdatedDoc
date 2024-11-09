/// Import necessary packages
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_project/Controller/mainController.dart';
import 'Pages/Home.dart';

/// Entry point of the application.
void main() {
// Initialize GetX and run the app
  runApp(const MyApp());

// Inject DockController instance using GetX
  Get.put(DockController());
}

/// Root widget of the application.
///
/// This widget is responsible for setting up the app's routing.
class MyApp extends StatelessWidget {
  /// Constructor for MyApp widget.
  const MyApp({super.key});

  @override

  /// Builds the MyApp widget.
  ///
  /// Returns a GetMaterialApp widget with customized routing.
  Widget build(BuildContext context) {
// Return GetMaterialApp with Home page as default route
    return GetMaterialApp(
// Set home page
      home: Home(),
    );
  }
}
