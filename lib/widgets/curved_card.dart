import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CurvedCard extends StatelessWidget {
  final String mainText;
  final String subText;
  final VoidCallback onPressed;
  final bool active;

  const CurvedCard({
    Key? key,
    required this.mainText,
    required this.subText,
    required this.onPressed,
    this.active = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        elevation: 0,
        color: active ? Color(0xff77EA7E) : Color(0xffF8F8F6),
        margin: EdgeInsets.symmetric(vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              ImageIcon(AssetImage('assets/carbon_user-profile.png')),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      mainText,
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff0A0909),
                      ),
                    ),
                    Text(
                      subText,
                      style: GoogleFonts.poppins(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff9B9B9B),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
