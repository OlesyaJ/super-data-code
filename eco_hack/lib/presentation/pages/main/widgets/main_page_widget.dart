import 'package:eco_hack/presentation/pages/map/map_page.dart';
import 'package:eco_hack/views/map_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webviewx/webviewx.dart';

class MainPageWidget extends StatelessWidget {
  const MainPageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Flexible(
            flex: 1,
            child: Row(
              children: [
                Flexible(
                  flex: 1,
                  child: MapCard(),
                ),
                SizedBox(
                  width: 30.0,
                ),
                Flexible(
                  flex: 1,
                  child: Card(
                    child: Container(
                      color: Colors.amber,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.red,
            ),
          )
        ],
      ),
    );
  }
}

class MapCard extends StatelessWidget {
  const MapCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30.0),
      child: Card(
        child: Stack(
          children: [
            MapWidget(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: WebViewAware(
                  child: ElevatedButton(
                    child: Icon(Icons.one_x_mobiledata),
                    onPressed: () {
                      Get.to(MapPage());
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
