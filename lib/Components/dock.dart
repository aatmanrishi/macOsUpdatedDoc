/// Import necessary packages
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_project/Components/draggleDockItem.dart';
import '../Controller/mainController.dart';

/// Dock widget.
///
/// Displays a row of draggable dock items.
class Dock extends StatelessWidget {
  /// Constructor for Dock widget.
  ///
  /// Requires [controller] to manage dock items.
  const Dock({super.key, required this.controller});

  /// DockController instance.
  final DockController controller;

  @override

  /// Builds the Dock widget.
  ///
  /// Returns a container with a row of draggable dock items.
  Widget build(BuildContext context) {
// Return container with dock styles
    return Container(
// Set dock height
      height: 75,

// Customize dock decoration
      decoration: BoxDecoration(
// Add border radius
        borderRadius: BorderRadius.circular(15),

// Set background color
        color: Colors.grey[200],
      ),

// Use Obx for real-time updates
      child: Obx(() => Row(
// Minimize row size
            mainAxisSize: MainAxisSize.min,

// Map dock items to DraggableDockItem widgets
            children: controller.items.asMap().entries.map((entry) {
// Get item index and value
              int index = entry.key;
              IconData item = entry.value;

// Return DraggableDockItem widget
              return DraggableDockItem(
// Set item icon
                icon: item,

// Handle drop event
                onDrop: (newIndex) => controller.onDrop(index, newIndex),

// Pass current index
                currentIndex: index,
              );
            }).toList(),
          )),
    );
  }
}
