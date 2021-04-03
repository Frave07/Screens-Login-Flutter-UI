import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class LoginTwoPage extends StatelessWidget
{

 @override
 Widget build(BuildContext context)
 {
    return Scaffold(
      backgroundColor: Color(0xff1f2226),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                SizedBox(height: 20),
                Center(child: Image.asset('Assets/logo.png', height: 150)),
                SizedBox(height: 20),

                Text('Welcome Back', style: GoogleFonts.getFont('Roboto', color: Colors.white, fontSize: 32)),
                SizedBox(height: 20),

                Container(
                  height: 55,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color(0xff1b1e21),
                    borderRadius: BorderRadius.circular(15.0)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 55,
                        width: MediaQuery.of(context).size.width * 0.4,
                        decoration: BoxDecoration(
                          color: Color(0xff3AC361),
                          borderRadius: BorderRadius.circular(15.0)
                        ),
                        child: Center(child: Text('Use Email', style: GoogleFonts.getFont('Roboto', color: Colors.white, fontSize: 16))),
                      ),
                      
                      Container(
                        height: 55,
                        width: MediaQuery.of(context).size.width * 0.49,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Color(0xff1b1e21),
                        ),
                        child: Center(child: Text('Use phone number', style: GoogleFonts.getFont('Roboto', color: Colors.white, fontSize: 16))),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 30),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xff1b1e21),
                    hintText: 'Email',
                    hintStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(20.0))
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xff1b1e21),
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(20.0))
                  ),
                ),

                SizedBox(height: 20),
                Align(
                  alignment: Alignment.center,
                  child: Text('Forgot password?', style: GoogleFonts.getFont('Roboto', color: Colors.white, fontSize: 16)),
                ),

                SizedBox(height: 20),

                _ButtonCustom(color: Color(0xff3AC361),text: 'Log In'),
                _ButtonCustom(color: Color(0xff2f343a),text: 'Sign Up', onPressed: ()=> Navigator.of(context).pushNamed('signUpTwo'),),

                SizedBox(height: 30),
                Align(
                  alignment: Alignment.center,
                  child: Text('Continue as guest', style: GoogleFonts.getFont('Roboto', color: Colors.white, fontSize: 15)),
                ),
              ],
            ),
          ),
        ),
      )
     );
  }
}

class _ButtonCustom extends StatelessWidget {
  
  final String text;
  final Color color;
  final Function onPressed;

  const _ButtonCustom({ this.text, this.color, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 15.0),
      child: Align(
        alignment: Alignment.center,
        child: InkWell(
          onTap: onPressed,
          child: Container(
            height: 45,
            width: 250,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(15.0)
            ),
            child: Center(child: Text(text, style: GoogleFonts.getFont('Roboto', color: Colors.white, fontSize: 16))),
          ),
        ),
      ),
    );
  }
}