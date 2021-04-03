import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nulti_auth/Widgets/HeaderLogin3.dart';


class SignUpThreePage extends StatelessWidget
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
                  HeaderSignUpThree(),
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
                    top: 40,
                    right: 80,
                    child: Icon(Icons.trip_origin, color: Colors.white38, size: 35)
                  ),
                  Positioned(
                    top: 90,
                    left: 60,
                    child: Icon(Icons.trip_origin, color: Colors.white38, size: 35)
                  ),
                  Positioned(
                    top: 165,
                    left: 60,
                    child: Text('Create Account', style: GoogleFonts.getFont('Inter', color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold))
                  ),
               ],
             ),

             SizedBox(height: 30),
             _TextFieldCustom( hint: 'Your full name goes here',isPassword: false),
             SizedBox(height: 20),
             _TextFieldCustom( hint: 'Your email address goes here',isPassword: false),
             SizedBox(height: 20),
             _TextFieldCustom( hint: 'Your phone number here',isPassword: false),
             SizedBox(height: 20),
             _TextFieldCustom( hint: 'Your password here',isPassword: false),

             SizedBox(height: 30),
             Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: InkWell(
                onTap: ()=> Navigator.of(context).pushNamed('verificationThree'),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xffEAEFF5),
                    borderRadius: BorderRadius.circular(7.0)
                  ),
                  child: Center(child: Text('Sign Up', style: GoogleFonts.getFont('Inter', color: Colors.grey[700], fontSize: 17))),
                ),
              ),
            ),

            SizedBox(height: 10),
            Text('Or', style: GoogleFonts.getFont('Inter', color: Colors.grey, fontSize: 15)),
            SizedBox(height: 10),
            Text('Connect with', style: GoogleFonts.getFont('Inter', color: Colors.grey, fontSize: 15)),

            SizedBox(height: 10),
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

            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already Have an account? ', style: GoogleFonts.getFont('Inter', color: Colors.grey, fontSize: 15)),
                GestureDetector(
                  onTap: () => Navigator.of(context).pushNamed('loginThree'),
                  child: Text('Sign In', style: GoogleFonts.getFont('Inter', color: Colors.grey, fontSize: 15, fontWeight: FontWeight.bold))
                )
              ],
            )

           ],
        ),
      ),
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
        style: TextStyle(color: Colors.white, fontSize: 17),

        decoration: InputDecoration(
          border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white), borderRadius: BorderRadius.circular(10.0)),
          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white), borderRadius: BorderRadius.circular(10.0)),
          labelStyle: TextStyle(color: Colors.white),
          hintText: hint,
          hintStyle: TextStyle(color: Colors.grey),
        )
      ),
    );
  }
}