import 'package:eco_hack/views/app_bar_widget.dart';
import 'package:eco_hack/views/driver_widget.dart';
import 'package:flutter/material.dart';

class BotPage extends StatelessWidget {
  const BotPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: "Бот",
      ),
      drawer: DriverWidget(),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return _get(index % 3 == 0);
        },
      ),
    );
  }

  Widget _get(bool one) {
    return Padding(
      padding: const EdgeInsets.only(left: 300.0),
      child: Column(
        children: [
          if (one == true)
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: SeparatorWidget(),
            ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 150.0,
                child: Column(
                  //Icon
                  children: [
                    CircleAvatar(),
                    Text(
                      "14:52",
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Text('Выброс углерода'),
                    LineWidget(),
                    ButtonRowWidget(),
                  ],
                ),
              ),
            ],
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
      height: 2.0,
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
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 300,
          child: Row(
            children: [
              Icon(
                Icons.four_g_mobiledata,
                color: Color(0xff006EFF),
              ),
              SizedBox(width: 10.0),
              Text("Посмотреть"),
            ],
          ),
        ),
        SizedBox(
          width: 300,
          child: Row(
            children: [
              Icon(
                Icons.four_g_mobiledata,
                color: Color(0xff006EFF),
              ),
              SizedBox(width: 10.0),
              Text("Посмотреть"),
            ],
          ),
        ),
        SizedBox(
          width: 300,
          child: Row(
            children: [
              Icon(
                Icons.four_g_mobiledata,
                color: Color(0xff006EFF),
              ),
              SizedBox(width: 10.0),
              Text("Посмотреть"),
            ],
          ),
        ),
        SizedBox(
          width: 300,
          child: Row(
            children: [
              Icon(
                Icons.four_g_mobiledata,
                color: Color(0xff006EFF),
              ),
              SizedBox(width: 10.0),
              Text("Посмотреть"),
            ],
          ),
        ),
      ],
    );
  }
}
