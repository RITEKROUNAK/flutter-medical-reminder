import 'package:flutter/material.dart';
import 'package:flutter_medical_reminder/screens/screens.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterDetails extends StatefulWidget {
  const RegisterDetails({Key? key}) : super(key: key);

  @override
  _RegisterDetailsState createState() => _RegisterDetailsState();
}

class _RegisterDetailsState extends State<RegisterDetails> {
  late bool _saveAddress;

  @override
  void initState() {
    super.initState();
    _saveAddress = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            TextField(
              maxLines: 1,
              decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 25.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide(
                          color: Color.fromRGBO(228, 228, 228, 0.6))),
                  labelStyle: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600, fontSize: 15.0),
                  labelText: 'Full Name'),
            ),
            TextField(
              maxLines: 1,
              decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 25.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide(
                          color: Color.fromRGBO(228, 228, 228, 0.6))),
                  labelStyle: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600, fontSize: 15.0),
                  labelText: 'Email'),
            ),
            TextField(
              maxLines: 1,
              decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 25.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide(
                          color: Color.fromRGBO(228, 228, 228, 0.6))),
                  labelStyle: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600, fontSize: 15.0),
                  labelText: 'Address'),
            ),
            TextField(
              maxLines: 1,
              decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 25.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide(
                          color: Color.fromRGBO(228, 228, 228, 0.6))),
                  labelStyle: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600, fontSize: 15.0),
                  labelText: 'City'),
            ),
            TextField(
              maxLines: 1,
              decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 25.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide(
                          color: Color.fromRGBO(228, 228, 228, 0.6))),
                  labelStyle: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600, fontSize: 15.0),
                  labelText: 'State'),
            ),
            TextField(
              maxLines: 1,
              decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 25.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide(
                          color: Color.fromRGBO(228, 228, 228, 0.6))),
                  labelStyle: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600, fontSize: 15.0),
                  labelText: 'Contact number'),
            ),
            Row(
              children: <Widget>[
                Container(
                  width: 24.0,
                  height: 24.0,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 4),
                        blurRadius: 8.0,
                        color: Color.fromRGBO(50, 50, 71, 0.06)),
                    BoxShadow(
                        offset: Offset(0, 4),
                        blurRadius: 4.0,
                        color: Color.fromRGBO(50, 50, 71, 0.06))
                  ]),
                  child: Checkbox(
                    value: _saveAddress,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.0)),
                    onChanged: (val) {
                      setState(() {
                        _saveAddress = !_saveAddress;
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: 15.0,
                ),
                Text(
                  'Use this to save your address for additional profiles',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400, fontSize: 11.0),
                ),
              ],
            ),
            ElevatedButton(
              child: Text(
                'Next',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 17.0,
                    color: Colors.white),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RegisterPassword()));
              },
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all(
                    Size(MediaQuery.of(context).size.width, 60.0)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(14.0)))),
                elevation: MaterialStateProperty.all(0.0),
                backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromRGBO(27, 209, 93, 1)),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
