import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class LoginOnePage extends StatelessWidget
{

 @override
 Widget build(BuildContext context)
 {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                  SizedBox(height: 15),
                  Text('Welcome Back', style: GoogleFonts.getFont('Inter', fontSize: 24, fontWeight: FontWeight.w600)),
                  SizedBox(height: 10),
                  Text('I am happy to see you again, You can ', style: TextStyle(color: Colors.grey)),
                  SizedBox(height: 5),
                  Text('continue where you left off by logging in', style: TextStyle(color: Colors.grey)),
                  SizedBox(height: 30),

                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xfff3f4f6),
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
                      hintText: 'Email Address',
                      hintStyle: TextStyle(color: Colors.grey),
                      prefixIcon: Icon(Icons.email_outlined),
                      floatingLabelBehavior: FloatingLabelBehavior.never
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xfff3f4f6),
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.grey),
                      prefixIcon: Icon(Icons.lock_outline_rounded),
                      floatingLabelBehavior: FloatingLabelBehavior.never
                    ),
                  ),
                  SizedBox(height: 15),
                  
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text('Forgot Password?', style: GoogleFonts.getFont('Inter', color: Color(0xff757999)))
                  ),

                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      height: 55,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Color(0xff2C75DC)
                      ),
                      child: Center(
                        child: Text('Sign In', style: GoogleFonts.getFont('Inter', color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500))
                      ),
                    ),
                  ),

                  SizedBox(height: 30),
                  Align(
                    alignment: Alignment.center,
                    child: Text('Or'),
                  ),

                  SizedBox(height: 30),
                  
                  _SignInWith(text: 'Google', icon: 'googleIcon'),
                  SizedBox(height: 15),
                  _SignInWith(text: 'Facebook', icon: 'facebook'),

                  SizedBox(height: 50),
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don\' have an account?',style: GoogleFonts.getFont('Inter', fontSize: 17, color: Color(0xff757999))),
                      SizedBox(width: 5),
                      GestureDetector(
                        onTap: () => Navigator.of(context).pushReplacementNamed('signUpOne'),
                        child: Text('Sign Up',style: GoogleFonts.getFont('Inter', fontSize: 17, fontWeight: FontWeight.bold))
                      ),
                    ]
                  )
              ],
            ),
          ),
        ),
      )
     );
  }


}

class _SignInWith extends StatelessWidget {

  final String text;
  final String icon;

  const _SignInWith({ this.text, this.icon });


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: Colors.grey[300])
      ),
      child: Row(
        children: [
          SizedBox(width: 15),
          Image.asset('Assets/$icon.png', height: 30),
          SizedBox(width: 60),
          Text('Sign In with $text', style: GoogleFonts.getFont('Inter', color: Color(0xff757999), fontSize: 16, fontWeight: FontWeight.w500)),
        ],
      )
    );
  }
}