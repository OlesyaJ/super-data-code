import 'package:eco_hack/presentation/pages/bot/bot_page.dart';
import 'package:eco_hack/presentation/pages/chart/chart_full_screen.dart';
import 'package:eco_hack/presentation/pages/chart/chart_screen.dart';
import 'package:eco_hack/presentation/pages/journal/journal_page.dart';
import 'package:eco_hack/presentation/pages/main/main_page.dart';
import 'package:eco_hack/presentation/pages/map/map_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:webviewx/webviewx.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DriverWidget extends StatelessWidget {
  const DriverWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WebViewAware(
      child: Drawer(
        child: SizedBox(
          width: double.infinity,
          child: Card(
            margin: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: const Color(0xff31394D),
            child: Column(
              children: [
                SizedBox(
                  height: 120.0,
                  child: Center(
                    child: Text(
                      "Analytics",
                      style: GoogleFonts.nunito(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const CircleAvatar(
                  radius: 44.0,
                  backgroundColor: Colors.blue,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "Юлия Иванова",
                    style: GoogleFonts.nunito(
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50.0,
                ),
                DrawerMenuItem(
                  icon: const Icon(
                    Icons.home,
                    color: Color(0xffB7C9F8),
                  ),
                  text: 'Дашборд',
                  onTap: () {
                    Get.offNamed('/');
                  },
                ),
                DrawerMenuItem(
                  icon: const Icon(
                    Icons.book,
                    color: Color(0xffB7C9F8),
                  ),
                  text: 'Журнал',
                  onTap: () {
                    Get.to(const JournalPage());
                  },
                ),
                DrawerMenuItem(
                  icon: SvgPicture.asset(
                    "assets/icons/map.svg",
                    color: const Color(0xffB7C9F8),
                  ),
                  text: 'Карта',
                  onTap: () {
                    Get.to(const MapPage());
                  },
                ),
                DrawerMenuItem(
                  icon: SvgPicture.asset(
                    "assets/icons/bot.svg",
                    color: const Color(0xffB7C9F8),
                  ),
                  text: 'Чат - бот',
                  onTap: () {
                    Get.to(const BotPage());
                  },
                ),
                DrawerMenuItem(
                  icon: SvgPicture.asset(
                    "assets/icons/calendar.svg",
                    color: const Color(0xffB7C9F8),
                  ),
                  text: 'Календарь',
                  onTap: () {},
                ),
                DrawerMenuItem(
                  icon: SvgPicture.asset(
                    "assets/icons/case.svg",
                    color: const Color(0xffB7C9F8),
                  ),
                  text: 'Аналитика',
                  onTap: () {
                    Get.to(const ChartFullScreen());
                  },
                ),
                DrawerMenuItem(
                  icon: SvgPicture.asset(
                    "assets/icons/pattern.svg",
                    color: const Color(0xffB7C9F8),
                  ),
                  text: 'Шаблоны',
                  onTap: () {},
                ),
                DrawerMenuItem(
                  icon: SvgPicture.asset(
                    "assets/icons/settings.svg",
                    color: const Color(0xffB7C9F8),
                  ),
                  text: 'Настройки',
                  onTap: () {},
                ),
                Expanded(
                  child: Container(),
                ),
                SizedBox(
                  height: 130,
                  child: Center(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        primary: Color(0xffA5B9CF),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.arrow_back_outlined,
                            color: Color(0xffA5B9CF),
                          ),
                          Text(
                            "Свернуть меню",
                            style: GoogleFonts.nunitoSans(
                              fontWeight: FontWeight.w400,
                              fontSize: 16.0,
                              color: Color(0xffA5B9CF),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DrawerMenuItem extends StatelessWidget {
  const DrawerMenuItem({
    Key? key,
    required this.text,
    required this.icon,
    this.onTap,
    this.color = const Color(0xffB7C9F8),
  }) : super(key: key);

  final String text;
  final Widget icon;
  final Color color;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: WebViewAware(
        child: TextButton(
          onPressed: onTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 50.0,
              ),
              icon,
              SizedBox(
                width: 10.0,
              ),
              Text(
                text,
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.w700,
                  fontSize: 18.0,
                  color: color,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
