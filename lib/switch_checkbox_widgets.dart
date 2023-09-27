import 'package:flutter/material.dart';

class SwitchWidget extends StatefulWidget {
  const SwitchWidget({super.key});

  @override
  State<SwitchWidget> createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Switch Feature"),
        Switch(
          value: isSwitched,
          onChanged: (value) {
            setState(
              () {
                isSwitched = value;
              },
            );
          },
        ),
        Text("Feature is ${isSwitched ? "ON" : "OFF"}")
      ],
    );
  }
}

class CheckBoxWidget extends StatefulWidget {
  const CheckBoxWidget({super.key});

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  List<bool> checkedItems = [false, false, false];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CheckboxListTile(
          title: const Text("Option 1"),
          value: checkedItems[0],
          onChanged: (value) {
            setState(
              () {
                checkedItems[0] = value!;
              },
            );
          },
        ),
        CheckboxListTile(
          value: checkedItems[1],
          onChanged: (value) {
            setState(
              () {
                checkedItems[1] = value!;
              },
            );
          },
        ),
        CheckboxListTile(
          value: checkedItems[1],
          onChanged: (value) {
            setState(
              () {
                checkedItems[1] = value!;
              },
            );
          },
        ),
        Text("Selected options: ${checkedItems.toString()}")
      ],
    );
  }
}
