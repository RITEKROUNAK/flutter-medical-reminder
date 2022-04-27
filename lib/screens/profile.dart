import 'package:flutter/material.dart';
import 'package:flutter_medical_reminder/screens/screens.dart';
import 'package:flutter_medical_reminder/widgets/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(left: 30.0, top: 30.0, right: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.only(bottom: 50.0),
                child: Text(
                  'My profile',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600, fontSize: 28.0),
                )),
            Text(
              'Himanshu Jain',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600, fontSize: 18.0),
            ),
            Padding(
                padding: EdgeInsets.only(top: 5.0, bottom: 15.0),
                child: Text(
                  'Patient',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 11.0,
                      color: Colors.black.withOpacity(0.4)),
                )),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Text(
                'Details',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500, fontSize: 17.0),
              ),
            ),
            ProfileDetailsCard(
              iconData: Icons.email_outlined,
              heading: 'Email',
              content: 'f20190423@goa.bits-pilani.ac.in',
            ),
            ProfileDetailsCard(
              iconData: Icons.calendar_today_outlined,
              heading: 'Age',
              content: '21 years',
            ),
            Padding(
              padding: EdgeInsets.only(top: 50.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SelectAProfile(
                                profiles: [
                                  {'name': 'Mayank Mathur', 'age': 20},
                                  {'name': 'Ritwij Kumar Sharma', 'age': 31},
                                  {'name': 'Amit Trivedi', 'age': 6},
                                  {'name': 'Kanishq Khandelwal', 'age': 69},
                                  {'name': 'Mayank Mathur', 'age': 20},
                                  {'name': 'Ritwij Kumar Sharma', 'age': 31},
                                  {'name': 'Amit Trivedi', 'age': 6},
                                  {'name': 'Kanishq Khandelwal', 'age': 69},
                                ],
                              )));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Choose another profile',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 13.0,
                          color: Color.fromRGBO(155, 155, 155, 1)),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Icon(Icons.chevron_right_rounded,
                        color: Color.fromRGBO(155, 155, 155, 1))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
