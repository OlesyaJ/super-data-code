import 'package:eco_hack/presentation/pages/chart/chart_page.dart';
import 'package:flutter/material.dart';

class ChartScreen extends StatefulWidget {
  const ChartScreen({Key? key}) : super(key: key);

  @override
  State<ChartScreen> createState() => _ChartScreenState();
}

class _ChartScreenState extends State<ChartScreen> {
  String _choice = 'week';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            TextButton(
              child: Text("Неделя"),
              onPressed: () {
                _choice = 'week';
                setState(() {});
              },
            ),
            TextButton(
              child: Text("Месяц"),
              onPressed: () {
                _choice = 'month';
                setState(() {});
              },
            ),
            TextButton(
              child: Text("Год"),
              onPressed: () {
                _choice = 'year';
                setState(() {});
              },
            ),
          ],
        ),
        Expanded(child: _getChart()),
      ],
    );
  }

  Widget _getChart() {
    if (_choice == 'month') {
      return ChartPage.monthData();
    }

    if (_choice == 'year') {
      return ChartPage.yearData();
    }
    return ChartPage.weekData();
  }
}
