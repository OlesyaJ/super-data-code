import 'package:eco_hack/views/app_bar_widget.dart';
import 'package:eco_hack/views/driver_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/main_page_widget.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: "Общая статистика",
      ),
      drawer: DriverWidget(),
      body: MainPageWidget(),
    );
  }
}
