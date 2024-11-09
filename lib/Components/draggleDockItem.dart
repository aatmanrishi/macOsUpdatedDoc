/// Import necessary packages
import 'package:flutter/material.dart';

/// Draggable dock item widget.
///
/// Represents a single item in the dock that can be dragged and dropped.
class DraggableDockItem extends StatelessWidget {
  /// Constructor for DraggableDockItem widget.
  ///
  /// Requires [icon], [onDrop], and [currentIndex].
  const DraggableDockItem({
    super.key,
    required this.icon,
    required this.onDrop,
    required this.currentIndex,
  });

  /// Icon displayed in the dock item.
  final IconData icon;

  /// Callback function when the item is dropped.
  ///
  /// Takes the new index as an argument.
  final Function(int newIndex) onDrop;

  /// Current index of the dock item.
  final int currentIndex;

  @override

  /// Builds the DraggableDockItem widget.
  ///
  /// Returns a draggable widget with a drag target.
  Widget build(BuildContext context) {
// Create a draggable widget with current index as data
    return Draggable<int>(
      data: currentIndex,

// Customize feedback widget
      feedback: Material(
        color: Colors.transparent,
        child: Container(
// Set width and height
          width: 60,
          height: 60,

// Add margin
          margin: const EdgeInsets.all(8),

// Customize decoration
          decoration: BoxDecoration(
// Add border radius
            borderRadius: BorderRadius.circular(15),

// Generate random color based on icon hash
            color: Colors.primaries[icon.hashCode % Colors.primaries.length],
          ),

// Display icon
          child: Center(
            child: Icon(
              icon,
              size: 40,
              color: Colors.white,
            ),
          ),
        ),
      ),

// Replace with empty container while dragging
      childWhenDragging: Container(),

// Create drag target
      child: DragTarget<int>(
// Handle drop event
        onAccept: (newIndex) {
// Call onDrop callback
          onDrop(newIndex);
        },

// Build drag target widget
        builder: (context, acceptedItems, rejectedItems) {
          return Container(
// Set width and height
            width: 60,
            height: 60,

// Add margin
            margin: const EdgeInsets.all(8),

// Customize decoration
            decoration: BoxDecoration(
// Add border radius
              borderRadius: BorderRadius.circular(15),

// Generate random color based on icon hash
              color: Colors.primaries[icon.hashCode % Colors.primaries.length],
            ),

// Display icon
            child: Center(
              child: Icon(
                icon,
                size: 40,
                color: Colors.white,
              ),
            ),
          );
        },
      ),
    );
  }
}
