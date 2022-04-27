import 'package:flutter/material.dart';
import 'package:flutter_medical_reminder/widgets/curved_card.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectAProfile extends StatefulWidget {
  final List<Map> profiles;

  SelectAProfile({
    Key? key,
    required this.profiles,
  }) : super(key: key);

  @override
  _SelectAProfileState createState() => _SelectAProfileState(profiles);
}

class _SelectAProfileState extends State<SelectAProfile> {
  final List<Map> profiles;
  int _activeCardIndex = -1;

  _SelectAProfileState(this.profiles);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30, 50, 30, 0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Select a profile",
                  style: GoogleFonts.poppins(
                    color: Color(0xff0A0909),
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 70,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: profiles.length,
                itemBuilder: (BuildContext context, int index) {
                  return CurvedCard(
                    mainText: profiles[index]["name"],
                    subText: profiles[index]["age"].toString(),
                    onPressed: () => setState(() {
                      _activeCardIndex = index;
                    }),
                    active: index == _activeCardIndex,
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: SizedBox(
                width: double.infinity,
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Color(0xff1BD15D),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      "Confirm",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
