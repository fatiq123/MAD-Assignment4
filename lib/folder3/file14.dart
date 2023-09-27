import 'package:flutter/material.dart';

class CustomRichText extends StatelessWidget {
  const CustomRichText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'This is a ',
        style: DefaultTextStyle.of(context).style,
        children: const <TextSpan>[
          TextSpan(
            text: 'rich',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          TextSpan(text: ' text example.'),
        ],
      ),
    );
  }
}

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Favorites',
        ),
      ],
    );
  }
}

class CustomAnimatedSwitcher extends StatefulWidget {
  const CustomAnimatedSwitcher({super.key});

  @override
  _CustomAnimatedSwitcherState createState() => _CustomAnimatedSwitcherState();
}

class _CustomAnimatedSwitcherState extends State<CustomAnimatedSwitcher> {
  bool _isSwitched = false;

  void _toggleSwitch() {
    setState(() {
      _isSwitched = !_isSwitched;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedSwitcher(
          duration: const Duration(seconds: 1),
          child: _isSwitched
              ? Icon(
            Icons.check_circle,
            color: Colors.green,
            key: UniqueKey(),
          )
              : Icon(
            Icons.cancel,
            color: Colors.red,
            key: UniqueKey(),
          ),
        ),
        ElevatedButton(
          onPressed: _toggleSwitch,
          child: const Text('Toggle Switch'),
        ),
      ],
    );
  }
}

class CustomAnimatedContainer extends StatefulWidget {
  const CustomAnimatedContainer({super.key});

  @override
  _CustomAnimatedContainerState createState() =>
      _CustomAnimatedContainerState();
}

class _CustomAnimatedContainerState extends State<CustomAnimatedContainer> {
  double _containerWidth = 100.0;
  double _containerHeight = 100.0;

  void _toggleContainerSize() {
    setState(() {
      if (_containerWidth == 100.0) {
        _containerWidth = 200.0;
        _containerHeight = 200.0;
      } else {
        _containerWidth = 100.0;
        _containerHeight = 100.0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedContainer(
          width: _containerWidth,
          height: _containerHeight,
          duration: Duration(seconds: 1),
          color: Colors.blue,
        ),
        ElevatedButton(
          onPressed: _toggleContainerSize,
          child: const Text('Toggle Container Size'),
        ),
      ],
    );
  }
}
