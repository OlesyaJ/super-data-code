import 'dart:ui';

import 'package:eco_hack/views/app_bar_widget.dart';
import 'package:eco_hack/views/driver_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class JournalPage extends StatelessWidget {
  const JournalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final titleStyle = GoogleFonts.nunito(
      fontSize: 14.0,
      color: Colors.black,
      fontWeight: FontWeight.bold,
    );

    final textStyle = GoogleFonts.nunitoSans(
      fontSize: 16.0,
      color: Colors.black,
      fontWeight: FontWeight.w400,
    );

    return Scaffold(
      appBar: AppBarWidget(title: "Журнал"),
      drawer: DriverWidget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 250.0),
        child: Stack(
          children: [
            ScrollConfiguration(
              behavior: ScrollConfiguration.of(context).copyWith(
                dragDevices: {
                  PointerDeviceKind.touch,
                  PointerDeviceKind.mouse,
                },
              ),
              child: ListView(
                physics: const AlwaysScrollableScrollPhysics(),
                children: [
                  ListTile(
                    title: Text(
                      "12.12.20",
                      style: titleStyle,
                    ),
                    subtitle: Text(
                        "В северном районе города произошел инцидет...",
                        style: textStyle),
                    onTap: () {
                      _tapped(context);
                    },
                  ),
                  ListTile(
                    title: Text(
                      "13.12.20",
                      style: titleStyle,
                    ),
                    subtitle: Text("В южном районе города произошел инцидет...",
                        style: textStyle),
                    onTap: () {
                      _tapped(context);
                    },
                  ),
                  ListTile(
                    title: Text(
                      "14.12.20",
                      style: titleStyle,
                    ),
                    subtitle: Text(
                        "В северном районе города произошел инцидет...",
                        style: textStyle),
                    onTap: () {
                      _tapped(context);
                    },
                  ),
                  ListTile(
                    title: Text(
                      "15.12.20",
                      style: titleStyle,
                    ),
                    subtitle: Text(
                        "В западном районе города произошел инцидет...",
                        style: textStyle),
                    onTap: () {
                      _tapped(context);
                    },
                  ),
                  ListTile(
                    title: Text(
                      "16.12.20",
                      style: titleStyle,
                    ),
                    subtitle: Text("В южном районе города произошел инцидет...",
                        style: textStyle),
                    onTap: () {
                      _tapped(context);
                    },
                  ),
                  ListTile(
                    title: Text(
                      "18.12.20",
                      style: titleStyle,
                    ),
                    subtitle: Text(
                        "В северном районе города произошел инцидет...",
                        style: textStyle),
                    onTap: () {
                      _tapped(context);
                    },
                  ),
                  ListTile(
                    title: Text(
                      "19.12.20",
                      style: titleStyle,
                    ),
                    subtitle: Text(
                        "В западном районе города произошел инцидет...",
                        style: textStyle),
                    onTap: () {
                      _tapped(context);
                    },
                  ),
                  ListTile(
                    title: Text(
                      "20.12.20",
                      style: titleStyle,
                    ),
                    subtitle: Text("В южном районе города произошел инцидет...",
                        style: textStyle),
                    onTap: () {
                      _tapped(context);
                    },
                  ),
                  ListTile(
                    title: Text(
                      "22.12.20",
                      style: titleStyle,
                    ),
                    subtitle: Text(
                        "В северном районе города произошел инцидет...",
                        style: textStyle),
                    onTap: () {
                      _tapped(context);
                    },
                  ),
                  ListTile(
                    title: Text(
                      "1.1.21",
                      style: titleStyle,
                    ),
                    subtitle: Text(
                        "В северном районе города произошел инцидет...",
                        style: textStyle),
                    onTap: () {
                      _tapped(context);
                    },
                  ),
                  ListTile(
                    title: Text(
                      "2.1.21",
                      style: titleStyle,
                    ),
                    subtitle: Text(
                        "В западном районе города произошел инцидет...",
                        style: textStyle),
                    onTap: () {
                      _tapped(context);
                    },
                  ),
                  ListTile(
                    title: Text(
                      "4.12.20",
                      style: titleStyle,
                    ),
                    subtitle: Text("В южном районе города произошел инцидет...",
                        style: textStyle),
                    onTap: () {
                      _tapped(context);
                    },
                  ),
                  ListTile(
                    title: Text(
                      "5.12.21",
                      style: titleStyle,
                    ),
                    subtitle: Text(
                        "В северном районе города произошел инцидет...",
                        style: textStyle),
                    onTap: () {
                      _tapped(context);
                    },
                  ),
                  ListTile(
                    title: Text(
                      "6.12.20",
                      style: titleStyle,
                    ),
                    subtitle: Text("В южном районе города произошел инцидет...",
                        style: textStyle),
                    onTap: () {
                      _tapped(context);
                    },
                  ),
                  ListTile(
                    title: Text(
                      "7.2.21",
                      style: titleStyle,
                    ),
                    subtitle: Text(
                        "В западном районе города произошел инцидет...",
                        style: textStyle),
                    onTap: () {
                      _tapped(context);
                    },
                  ),
                  ListTile(
                    title: Text(
                      "8.2.21",
                      style: titleStyle,
                    ),
                    subtitle: Text(
                        "В северном районе города произошел инцидет...",
                        style: textStyle),
                    onTap: () {
                      _tapped(context);
                    },
                  ),
                  ListTile(
                    title: Text(
                      "13.3.21",
                      style: titleStyle,
                    ),
                    subtitle: Text("В южном районе города произошел инцидет...",
                        style: textStyle),
                    onTap: () {
                      _tapped(context);
                    },
                  ),
                  ListTile(
                    title: Text(
                      "13.3.21",
                      style: titleStyle,
                    ),
                    subtitle: Text(
                        "В западном районе города произошел инцидет...",
                        style: textStyle),
                    onTap: () {
                      _tapped(context);
                    },
                  ),
                  ListTile(
                    title: Text(
                      "15.4.21",
                      style: titleStyle,
                    ),
                    subtitle: Text("В южном районе города произошел инцидет...",
                        style: textStyle),
                    onTap: () {
                      _tapped(context);
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50.0, left: 450),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: FloatingActionButton(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color(0xff31394D),
                  onPressed: () {
                    _tappedFloat(context);
                  },
                  child: Icon(Icons.add, ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  _tappedFloat(context) {

    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Добавить новое событие",
                style: TextStyle(fontWeight: FontWeight.bold)),
            content: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(
                    height: 30.0,
                  ),
                  Text("Координаты: 55.1644, 61.4368"),
                  SizedBox(
                    height: 15.0,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: 'Дата'
                    ),
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),

                  TextField(
                    decoration: InputDecoration(
                        hintText: 'Фирма'
                    ),
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: 'Название'
                    ),
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: 'Описание'
                    ),
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: 'Степень тяжести'
                    ),
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: 'Инспектор'
                    ),
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Выйти')),
              TextButton(
                onPressed: () {
                  print('HelloWorld!');
                  Navigator.pop(context);
                },
                child: Text('Сохранить'),
              )
            ],
          );
        });
  }

  _tapped(context) {
    final _ctx = TextEditingController(
        text:
            "На станции подъема воды на улице Песочная произошел выброс хлора, людей призвали срочно покинуть район аварии, сообщили в ГУ МЧС по Удмуртии."
            'Источник "Интерфакса" в администрации города осообщил, что там разгерметизировалась 800-килограммовая емкость с хлором.'
            '"По технической причине произошла разгерметизации одной из емкостей с хлором, весом 800 кг. Эвакуирован персонал станции. Эвакуация жильцов не требуется", - сказал он'
            'По его словам, превышения концентраций хлора в жилом секторе нет. Утечка локализована границами станции. Пострадавших нет.');

    final _ctx2 = TextEditingController(text: "Иванов Иван Иванович");

    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Редактор события",
                style: TextStyle(fontWeight: FontWeight.bold)),
            content: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    "12.12.20",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text('ООО "Конкорд"'),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text("Координаты: 55.1644, 61.4368"),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text('Экологический инцидент средней тяжести',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    controller: _ctx,
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Text("Инспектор",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextField(
                    controller: _ctx2,
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Выйти')),
              TextButton(
                onPressed: () {
                  print('HelloWorld!');
                  Navigator.pop(context);
                },
                child: Text('Сохранить'),
              )
            ],
          );
        });
  }
}
