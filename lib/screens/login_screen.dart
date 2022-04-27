import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 40.0),
              child: Text(
                'Welcome,',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600, fontSize: 28.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 60.0),
              child: Text(
                'Login to start your journey',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500, fontSize: 17.0),
              ),
            ),
            TextField(
              maxLines: 1,
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500, fontSize: 15.0),
              decoration: InputDecoration(
                  labelText: 'Email address',
                  labelStyle: GoogleFonts.poppins(
                      fontSize: 15.0, fontWeight: FontWeight.w500),
                  hintText: 'Enter your email address',
                  prefixIcon: Icon(Icons.person),
                  fillColor: Color.fromRGBO(248, 248, 246, 1),
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(14.0)),
                      borderSide:
                          BorderSide(width: 0, style: BorderStyle.none))),
            ),
            SizedBox(
              height: 15.0,
            ),
            TextField(
              obscureText: _obscureText,
              maxLines: 1,
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500, fontSize: 15.0),
              decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: GoogleFonts.poppins(
                      fontSize: 15.0, fontWeight: FontWeight.w500),
                  hintText: 'Enter your password',
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
              padding: EdgeInsets.only(top: 60.0, bottom: 5.0),
              child: ElevatedButton(
                child: Text(
                  'Login',
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
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {},
                    child: Text('Forgot password',
                        style: GoogleFonts.poppins(
                            color: Color.fromRGBO(155, 155, 155, 1),
                            fontSize: 13.0,
                            fontWeight: FontWeight.w500)),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: Text('Register new user',
                        style: GoogleFonts.poppins(
                            color: Color.fromRGBO(155, 155, 155, 1),
                            fontSize: 13.0,
                            fontWeight: FontWeight.w500)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
