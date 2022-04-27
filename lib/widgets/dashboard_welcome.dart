import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Hello,',
                textAlign: TextAlign.left,
                style: GoogleFonts.poppins(
                  fontSize: 28.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'Himanshu',
                style: GoogleFonts.poppins(
                  fontSize: 28.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(24.0),
                margin: EdgeInsets.only(top: 15.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(28.0)),
                  color: Color.fromRGBO(243, 246, 200, 1),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Your plan \n for today',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600, fontSize: 18.0),
                      ),
                      Text(
                        '1 of 4 completed',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 11.0,
                            color: Color.fromRGBO(0, 0, 0, 0.4)),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Text(
                        'Show More',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(236, 118, 105, 1),
                            fontSize: 13),
                      ),
                      Divider(
                        color: Color.fromRGBO(236, 118, 105, 1),
                        thickness: 2.0,
                        endIndent: 273.5,
                      )
                    ]),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Align(
              alignment: Alignment.topRight,
              child: Image.asset('assets/male.png'),
            ),
          )
        ],
      ),
    );
  }
}
