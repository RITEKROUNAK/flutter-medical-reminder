import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPassword extends StatefulWidget {
  RegisterPassword({Key? key}) : super(key: key);

  @override
  _RegisterPasswordState createState() => _RegisterPasswordState();
}

class _RegisterPasswordState extends State<RegisterPassword> {
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText = true;
  }

  _showPassword() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(30, 50, 0, 0),
          child: IconButton(
            splashRadius: 0.1,
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Text('Secure your account',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600, fontSize: 28.0))),
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: Text(
                'Add a password to complete the registration',
                style: GoogleFonts.poppins(
                    fontSize: 17.0, fontWeight: FontWeight.w500),
              ),
            ),
            TextField(
              obscureText: _obscureText,
              maxLines: 1,
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500, fontSize: 15.0),
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 25.0),
                  labelText: 'Enter new password',
                  labelStyle: GoogleFonts.poppins(
                      fontSize: 15.0, fontWeight: FontWeight.w500),
                  hintText: 'Enter new password',
                  prefixIcon: Icon(Icons.security),
                  suffixIcon: InkWell(
                    child: Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off),
                    onTap: _showPassword,
                  ),
                  fillColor: Color.fromRGBO(248, 248, 246, 1),
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(14.0)),
                      borderSide:
                          BorderSide(width: 0, style: BorderStyle.none))),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, bottom: 50.0),
              child: TextField(
                obscureText: _obscureText,
                maxLines: 1,
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500, fontSize: 15.0),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 25.0),
                    labelText: 'Re-enter your password',
                    labelStyle: GoogleFonts.poppins(
                        fontSize: 15.0, fontWeight: FontWeight.w500),
                    hintText: 'Re-enter your password',
                    prefixIcon: Icon(Icons.security),
                    suffixIcon: InkWell(
                      child: Icon(_obscureText
                          ? Icons.visibility
                          : Icons.visibility_off),
                      onTap: _showPassword,
                    ),
                    fillColor: Color.fromRGBO(248, 248, 246, 1),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(14.0)),
                        borderSide:
                            BorderSide(width: 0, style: BorderStyle.none))),
              ),
            ),
            ElevatedButton(
              child: Text(
                'Finish registration',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 17.0,
                    color: Colors.white),
              ),
              onPressed: () {},
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all(
                    Size(MediaQuery.of(context).size.width, 60.0)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(14.0)))),
                elevation: MaterialStateProperty.all(0.0),
                backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromRGBO(27, 209, 93, 1)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
