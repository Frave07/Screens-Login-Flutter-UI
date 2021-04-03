import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nulti_auth/Widgets/HeaderLogin3.dart';


class LogInThreePage extends StatelessWidget
{

 @override
 Widget build(BuildContext context)
 {
    return Scaffold(
      backgroundColor: Color(0xff172437),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Stack(
              children: [

                HeaderLoginThree(),
                Positioned(
                  top: 40,
                  left: 20,
                  child: GestureDetector(
                    onTap: ()=> Navigator.pop(context),
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white)
                      ),
                      child: Icon(Icons.arrow_back_ios_outlined, size: 22, color: Colors.grey[700]),
                    ),
                  )
                ),
                Positioned(
                  top: 60,
                  right: 80,
                  child: Icon(Icons.trip_origin, color: Colors.white38, size: 35)
                ),
                Positioned(
                  top: 120,
                  left: 90,
                  child: Icon(Icons.trip_origin, color: Colors.white38, size: 35)
                ),
                Positioned(
                  left: MediaQuery.of(context).size.width * 0.35,
                  top: 130,
                  child: Text('Welcome', style: GoogleFonts.getFont('Inter', color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold))
                ),
                Positioned(
                  left: MediaQuery.of(context).size.width * 0.34,
                  top: 170,
                  child: Text('Sign In to continue', style: GoogleFonts.getFont('Inter', color: Colors.white, fontSize: 17))
                ),
              ],
            ),

            _TextFieldCustom(hint: 'Your email address goes here', isPassword: false),
            SizedBox(height: 40),
            _TextFieldCustom(hint: 'Password' ,isPassword: true),

            SizedBox(height: 10),
            Text('Forgot Password?', style: GoogleFonts.getFont('Inter', color: Colors.grey, fontSize: 15)),

            SizedBox(height: 40),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffEAEFF5),
                  borderRadius: BorderRadius.circular(7.0)
                ),
                child: Center(child: Text('Sign In', style: GoogleFonts.getFont('Inter', color: Colors.grey[700], fontSize: 17))),
              ),
            ),

            SizedBox(height: 10),
            Text('Or', style: GoogleFonts.getFont('Inter', color: Colors.grey, fontSize: 15)),
            SizedBox(height: 10),
            Text('Connect with', style: GoogleFonts.getFont('Inter', color: Colors.grey, fontSize: 15)),

            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(FontAwesomeIcons.google, color: Colors.white),
                SizedBox(width: 10),
                Container(width: 2, color: Colors.white, height: 20),
                SizedBox(width: 10),
                Icon(FontAwesomeIcons.facebook, color: Colors.white),
              ],
            ),

            SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Don\'t have Account? ', style: GoogleFonts.getFont('Inter', color: Colors.grey, fontSize: 15)),
                GestureDetector(
                  onTap: () => Navigator.of(context).pushNamed('signUpThree'),
                  child: Text('Sign Up', style: GoogleFonts.getFont('Inter', color: Colors.grey, fontSize: 15, fontWeight: FontWeight.bold))
                )
              ],
            )
            
          ],
        ),
      )
     );
  }
}

class _TextFieldCustom extends StatelessWidget {
  
  final String hint;
  final bool isPassword;

  const _TextFieldCustom({ this.hint, this.isPassword });
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: TextField(
        textAlign: TextAlign.center,
        obscureText: isPassword,
        style: TextStyle(color: Colors.white, fontSize: 18),

        decoration: InputDecoration(
          border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          labelStyle: TextStyle(color: Colors.white),
          hintText: hint,
          hintStyle: TextStyle(color: Colors.grey),
        )
      ),
    );
  }
}