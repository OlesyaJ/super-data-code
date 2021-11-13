import 'package:eco_hack/views/app_bar_widget.dart';
import 'package:eco_hack/views/driver_widget.dart';
import 'package:eco_hack/views/map_widget.dart';
import 'package:flutter/material.dart';
import 'package:webviewx/webviewx.dart';

class MapPage extends StatelessWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: "Карта"),
      drawer: WebViewAware(child: DriverWidget()),
      body: MapWidget(),
    );
  }
}
