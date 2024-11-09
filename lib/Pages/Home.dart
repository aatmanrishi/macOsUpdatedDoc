/// Import necessary packages
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Components/dock.dart';
import '../Controller/mainController.dart';

/// Home page widget.
///
/// Displays the dock component.
class Home extends StatelessWidget {
  /// Constructor for Home widget.
  Home({super.key});

// Get the DockController instance using GetX
  final dockController = Get.put(DockController());

  @override

  /// Builds the Home widget.
  ///
  /// Returns a Scaffold with the dock component.
  Widget build(BuildContext context) {
// Return Scaffold with centered dock
    return Scaffold(
      body: Center(
// Display Dock component with controller
        child: Dock(controller: dockController),
      ),
    );
  }
}
