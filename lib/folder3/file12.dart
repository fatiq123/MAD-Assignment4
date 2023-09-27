import 'package:flutter/material.dart';

class CustomDateRangePicker extends StatefulWidget {
  const CustomDateRangePicker({super.key});

  @override
  _CustomDateRangePickerState createState() => _CustomDateRangePickerState();
}

class _CustomDateRangePickerState extends State<CustomDateRangePicker> {
  DateTime _startDate = DateTime.now();
  DateTime _endDate = DateTime.now().add(Duration(days: 7));

  Future<void> _selectDateRange(BuildContext context) async {
    final picked = await showDateRangePicker(
      context: context,
      firstDate: DateTime(2023),
      lastDate: DateTime(2024),
      initialDateRange: DateTimeRange(start: _startDate, end: _endDate),
    );

    if (picked != null) {
      setState(() {
        _startDate = picked.start;
        _endDate = picked.end;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Selected Date Range:'),
        Text('Start Date: ${_startDate.toLocal()}'),
        Text('End Date: ${_endDate.toLocal()}'),
        ElevatedButton(
          onPressed: () => _selectDateRange(context),
          child: const Text('Select Date Range'),
        ),
      ],
    );
  }
}

class CustomSearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        hintText: 'Search...',
        prefixIcon: Icon(Icons.search),
        border: OutlineInputBorder(),
      ),
    );
  }
}

class CustomSlidingUpPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
      panel: const Center(
        child: Text('Sliding Panel Content'),
      ),
      collapsed: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
        ),
        child: const Center(
          child: Text('Swipe up to see more'),
        ),
      ),
    );
  }
}

class CustomBarcodeScanner extends StatelessWidget {
  const CustomBarcodeScanner({super.key});

  @override
  Widget build(BuildContext context) {
    return BarcodeScanner(
      onScan: (barcode) {
        // Handle barcode scan result
      },
    );
  }
}
