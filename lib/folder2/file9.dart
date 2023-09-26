import 'package:flutter/material.dart';

class AnimatedLoadingIndicator extends StatefulWidget {
  const AnimatedLoadingIndicator({super.key});

  @override
  _AnimatedLoadingIndicatorState createState() =>
      _AnimatedLoadingIndicatorState();
}

class _AnimatedLoadingIndicatorState extends State<AnimatedLoadingIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _colorAnimation = ColorTween(
      begin: Colors.blue,
      end: Colors.green,
    ).animate(_controller);

    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return CircularProgressIndicator(
            valueColor: _colorAnimation,
          );
        },
      ),
    );
  }
}

class CustomAccordion extends StatefulWidget {
  const CustomAccordion({super.key});

  @override
  _CustomAccordionState createState() => _CustomAccordionState();
}

class _CustomAccordionState extends State<CustomAccordion> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
      elevation: 1,
      expandedHeaderPadding: const EdgeInsets.all(10),
      // expandedHeaderBackgroundColor: Colors.grey[200],
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _isExpanded = !isExpanded;
        });
      },
      children: [
        ExpansionPanel(
          headerBuilder: (context, isExpanded) {
            return const ListTile(
              title: Text('Accordion Title'),
            );
          },
          body: Container(
            padding: const EdgeInsets.all(10),
            child: const Text('Accordion Content'),
          ),
          isExpanded: _isExpanded,
        ),
      ],
    );
  }
}

/*class CustomMap extends StatelessWidget {
  const CustomMap({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      child: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(37.7749, -122.4194), // Replace with your location
          zoom: 12,
        ),
        markers: {
          Marker(
            markerId: MarkerId('1'),
            position: LatLng(37.7749, -122.4194), // Replace with your marker location
            infoWindow: InfoWindow(title: 'Marker 1'),
          ),
        },
      ),
    );
  }
}*/

/*
class CustomPieChart extends StatelessWidget {
  const CustomPieChart({super.key});

  @override
  Widget build(BuildContext context) {
    return PieChart(
      dataMap: {
        'A': 5,
        'B': 3,
        'C': 2,
      },
      chartRadius: MediaQuery.of(context).size.width / 2.2,
      colorList: [Colors.blue, Colors.green, Colors.orange],
    );
  }
}
*/
