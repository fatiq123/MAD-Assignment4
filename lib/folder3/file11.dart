import 'package:flutter/material.dart';

class CustomVideoPlayer extends StatelessWidget {
  const CustomVideoPlayer({super.key});

  @override
  Widget build(BuildContext context) {
    return VideoPlayerController.network(
      'https://example.com/sample_video.mp4',
      aspectRatio: 16 / 9,
    );
  }
}

class CustomStepper extends StatefulWidget {
  const CustomStepper({super.key});

  @override
  _CustomStepperState createState() => _CustomStepperState();
}

class _CustomStepperState extends State<CustomStepper> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Stepper(
      currentStep: _currentStep,
      onStepTapped: (step) {
        setState(() {
          _currentStep = step;
        });
      },
      steps: const [
        Step(
          title: Text('Step 1'),
          content: Text('This is step 1 content.'),
        ),
        Step(
          title: Text('Step 2'),
          content: Text('This is step 2 content.'),
        ),
        Step(
          title: Text('Step 3'),
          content: Text('This is step 3 content.'),
        ),
      ],
    );
  }
}

class CustomColorPicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ColorPicker(
      enableAlpha: false,
      pickerColor: Colors.blue,
      onColorChanged: (color) {
        // Handle color selection
      },
    );
  }
}

class CustomToggleButtons extends StatefulWidget {
  const CustomToggleButtons({super.key});

  @override
  _CustomToggleButtonsState createState() => _CustomToggleButtonsState();
}

class _CustomToggleButtonsState extends State<CustomToggleButtons> {
  List<bool> _selections = [true, false, false];

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      isSelected: _selections,
      onPressed: (int index) {
        setState(() {
          _selections[index] = !_selections[index];
        });
      },
      children: const [
        Icon(Icons.star),
        Icon(Icons.favorite),
        Icon(Icons.thumb_up),
      ],
    );
  }
}
