import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarWidget extends StatelessWidget with PreferredSizeWidget {
  const AppBarWidget({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Size get preferredSize => Size.fromHeight(50.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(
        color: Color(0xff31394D),
        size: 30.0,
      ),
      title: Row(
        children: [
          SizedBox(
            width: 304,
          ),
          Text(
            title,
            style: GoogleFonts.nunitoSans(
              fontSize: 30.0,
              fontWeight: FontWeight.w700,
              color: Color(0xff31394D),
            ),
          ),
        ],
      ),
      elevation: 0.0,
    );
  }
}