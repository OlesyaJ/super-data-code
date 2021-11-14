import 'package:eco_hack/presentation/pages/chart/chart_page.dart';
import 'package:eco_hack/presentation/pages/chart/chart_screen.dart';
import 'package:eco_hack/presentation/pages/map/map_page.dart';
import 'package:eco_hack/presentation/pages/table/table_page.dart';
import 'package:eco_hack/views/map_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:webviewx/webviewx.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 40.0, horizontal: 100.0),
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: Card(
                        elevation: 5.0,
                        child: ChartScreen(),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  Flexible(
                    flex: 1,
                    child: MapCard(),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(left: 100.0),
              child: TablePage(),
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
        elevation: 10.0,
        child: Stack(
          children: [
            MapWidget(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: WebViewAware(
                  child: GestureDetector(
                    onTap: () {
                      Get.to(MapPage());
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: Container(
                        width: 30,
                        height: 30,
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: SvgPicture.asset(
                            'assets/icons/expand.svg',
                            color: Color(0xff006EFF),
                          ),
                        ),
                      ),
                    ),
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
