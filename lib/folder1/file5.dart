import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text('John Doe'),
            accountEmail: Text('johndoe@example.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('https://example.com/user_avatar.jpg'),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              // Navigate to home page
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              // Navigate to settings page
            },
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Logout'),
            onTap: () {
              // Handle logout action
            },
          ),
        ],
      ),
    );
  }
}

class CustomRadioButton extends StatefulWidget {
  const CustomRadioButton({super.key});

  @override
  _CustomRadioButtonState createState() => _CustomRadioButtonState();
}

class _CustomRadioButtonState extends State<CustomRadioButton> {
  int _selectedValue = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile<int>(
          title: const Text('Option 1'),
          value: 1,
          groupValue: _selectedValue,
          onChanged: (int? value) {
            setState(() {
              _selectedValue = value!;
            });
          },
        ),
        RadioListTile<int>(
          title: const Text('Option 2'),
          value: 2,
          groupValue: _selectedValue,
          onChanged: (int? value) {
            setState(() {
              _selectedValue = value!;
            });
          },
        ),
      ],
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

class CustomDatePicker extends StatelessWidget {
  const CustomDatePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return DatePickerDialog(
      initialDate: DateTime.now(),
      firstDate: DateTime(2023),
      lastDate: DateTime(2024),
      /*onDateSet: (date) {
        // Handle date selection
      },*/
    );
  }
}
