/// Import necessary packages
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// Controller for dock items.
///
/// Manages the list of dock items and handles item reordering.
class DockController extends GetxController {
  /// List of dock items, observable for real-time updates.
  final RxList<IconData> items = RxList.from([
    Icons.person,
    Icons.message,
    Icons.call,
    Icons.camera,
    Icons.photo,
  ]);

  /// Reorders dock items when dropped.
  ///
  /// Removes item at [oldIndex] and inserts it at [newIndex].
  void onDrop(int oldIndex, int newIndex) {
// Check if item was moved
    if (oldIndex != newIndex) {
// Remove item from old index
      final item = items.removeAt(oldIndex);

      // Insert item at new index
      items.insert(newIndex, item);

      // Print confirmation (optional)
      print('Item reordered');
    }
  }
}
