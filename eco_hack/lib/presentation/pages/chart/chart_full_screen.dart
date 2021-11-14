import 'package:eco_hack/views/app_bar_widget.dart';
import 'package:eco_hack/views/driver_widget.dart';
import 'package:flutter/material.dart';

import 'chart_screen.dart';

class ChartFullScreen extends StatelessWidget {
  const ChartFullScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: "Дашборд"),
      drawer: DriverWidget(),
      body: Padding(
        padding: const EdgeInsets.all(100.0),
        child: ChartScreen(),
      ),
    );
  }
}
