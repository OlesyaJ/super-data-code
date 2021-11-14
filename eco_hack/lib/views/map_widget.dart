import 'package:flutter/material.dart';
import 'package:webviewx/webviewx.dart';

class MapWidget extends StatefulWidget {
  const MapWidget({Key? key}) : super(key: key);

  @override
  State<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  late WebViewXController webviewController;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return WebViewX(
          initialContent: 'https://musing-lamport-acc640.netlify.app/',
          initialSourceType: SourceType.url,
          onWebViewCreated: (controller) {
            webviewController = controller;
          },
          height: constraints.maxHeight,
          width: constraints.maxWidth,
        );
      },
    );
  }
}
