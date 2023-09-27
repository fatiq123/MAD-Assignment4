import 'package:flutter/material.dart';

class CustomDraggableWidget extends StatefulWidget {
  const CustomDraggableWidget({super.key});

  @override
  _CustomDraggableWidgetState createState() => _CustomDraggableWidgetState();
}

class _CustomDraggableWidgetState extends State<CustomDraggableWidget> {
  Color _widgetColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Draggable(
      feedback: Container(
        width: 100,
        height: 100,
        color: _widgetColor,
        child: const Center(
          child: Text('Dragging...'),
        ),
      ),
      onDragStarted: () {
        setState(() {
          _widgetColor = Colors.red;
        });
      },
      onDragEnd: (details) {
        setState(() {
          _widgetColor = Colors.blue;
        });
      },
      child: Container(
        width: 100,
        height: 100,
        color: _widgetColor,
        child: Center(
          child: Text('Drag me'),
        ),
      ),
    );
  }
}

class CustomSnackBarButton extends StatelessWidget {
  const CustomSnackBarButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('This is a custom snackbar!'),
            duration: Duration(seconds: 3),
          ),
        );
      },
      child: const Text('Show Snackbar'),
    );
  }
}

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        // Handle FloatingActionButton press
      },
      child: const Icon(Icons.add),
    );
  }
}

class CustomTooltipWidget extends StatelessWidget {
  const CustomTooltipWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Tooltip(
      message: 'This is a tooltip',
      child: Icon(Icons.info),
    );
  }
}
