import 'package:eco_hack/presentation/pages/bot/bot_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:webviewx/webviewx.dart';

class DriverWidget extends StatelessWidget {
  const DriverWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SizedBox(
        width: double.infinity,
        child: Card(
          margin: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: Color(0xff31394D),
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
              CircleAvatar(
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
              SizedBox(
                height: 130,
                child: Center(
                  child: WebViewAware(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        primary: Color(0xffA5B9CF),
                      ),
                      onPressed: () {
                        Get.to(BotPage());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Бот",
                            style: GoogleFonts.nunitoSans(
                              fontWeight: FontWeight.w400,
                              fontSize: 16.0,
                              color: Color(0xffA5B9CF),
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Color(0xffA5B9CF),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
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
    );
  }
}