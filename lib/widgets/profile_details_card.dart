import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileDetailsCard extends StatelessWidget {
  final IconData iconData;
  final String heading;
  final String content;

  const ProfileDetailsCard(
      {Key? key,
      required this.iconData,
      required this.heading,
      required this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24.0),
          color: Color.fromRGBO(248, 248, 246, 1)),
      child: Row(
        children: <Widget>[
          Icon(
            iconData,
            color: Color.fromRGBO(155, 155, 155, 1),
          ),
          SizedBox(
            width: 15.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                heading,
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500, fontSize: 15.0),
              ),
              Text(
                content,
                style: GoogleFonts.poppins(
                    fontSize: 13.0,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(155, 155, 155, 1)),
              )
            ],
          )
        ],
      ),
    );
  }
}
