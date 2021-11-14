import 'package:eco_hack/views/app_bar_widget.dart';
import 'package:eco_hack/views/driver_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BotPage extends StatelessWidget {
  const BotPage({Key? key}) : super(key: key);

  static final List<String> _texts = [
    'Зафиксировано превышение выброса углерода (сажи) на ОАО "Кыштымский абразивный завод". Адрес Челябинская область, г. Кыштым, ул. Станционная, д 1-А. ',
    'Зафиксирована новая жалоба на выброс. ',
    'Зафиксирован новый ХС вне реестра ОНВОС и представляющий угрозу окружающей среде',
    'Закончивается срок исполнения предписания а ОАО "Кыштымский абразивный завод" Срок исполнения до 25.11.2021',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: "Бот",
      ),
      drawer: DriverWidget(),
      body: Padding(
        padding: const EdgeInsets.only(top: 100.0),
        child: ListView.builder(
          itemCount: _texts.length,
          itemBuilder: (BuildContext context, int index) {
            return _get(index % 2 == 0, _texts[index]);
          },
        ),
      ),
    );
  }

  Widget _get(bool one, String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 300.0, right: 200.0),
      child: Column(
        children: [
          if (one == true)
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: SeparatorWidget(),
            ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 150.0,
                  child: Column(
                    //Icon
                    children: [
                      CircleAvatar(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "14:52",
                          style: GoogleFonts.inter(
                            fontSize: 10.0,
                            color: Color(0xff006EFF),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Text(
                            text,
                            textAlign: TextAlign.left,
                            style: GoogleFonts.nunitoSans(
                              fontSize: 16.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      LineWidget(),
                      ButtonRowWidget(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class LineWidget extends StatelessWidget {
  const LineWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1.0,
      color: Color(0xffA5ABCC),
    );
  }
}

class SeparatorWidget extends StatelessWidget {
  const SeparatorWidget({Key? key, this.text = "12.11.2021"}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: LineWidget(),
        ),
        Text(text),
        Expanded(
          child: LineWidget(),
        ),
      ],
    );
  }
}

class ButtonRowWidget extends StatelessWidget {
  const ButtonRowWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 200,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  // Icon(
                  //   Icons.four_g_mobiledata,
                  //   color: Color(0xff006EFF),
                  // ),
                  SvgPicture.asset(
                    "assets/icons/Group.svg",
                    color: Color(0xff006EFF),
                  ),
                  const SizedBox(width: 10.0),
                  Text(
                    "Посмотреть",
                    style: GoogleFonts.nunito(
                      fontSize: 14.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 200,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/arrow.svg",
                    color: const Color(0xff006EFF),
                  ),
                  const SizedBox(width: 10.0),
                  Text(
                    "Отправить специалиста",
                    style: GoogleFonts.nunito(
                      fontSize: 14.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 200,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/book.svg",
                    color: const Color(0xff006EFF),
                  ),
                  const SizedBox(width: 10.0),
                  Text(
                    "История посещения ХС",
                    style: GoogleFonts.nunito(
                      fontSize: 14.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 200,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/menu.svg",
                    color: const Color(0xff006EFF),
                  ),
                  const SizedBox(width: 10.0),
                  Text(
                    "Выписать предписание",
                    style: GoogleFonts.nunito(
                      fontSize: 14.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
