import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class LoginSevenPage extends StatelessWidget
{

 @override
 Widget build(BuildContext context)
 {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
               children: [

                  SizedBox(height: 20),
                  Center(child: Image.asset('Assets/logo-black.png', height: 90)),
                  // Center(child: Text('Login', style: GoogleFonts.getFont('Roboto', color: Colors.black, fontSize: 35 ))),
                  SizedBox(height: 30),
                  _ButtonCustom(text: 'Use Google Account', icon: 'googleIcon.png'),
                  SizedBox(height: 20),
                  _ButtonCustom(text: 'Use Facebook Account', icon: 'facebook.png'),

                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 1,
                         width: MediaQuery.of(context).size.width * .35,
                        color: Colors.grey[400]
                      ),
                      Text( ' Or ', style: GoogleFonts.getFont('Roboto', color: Color(0xffA0A5B9), fontSize: 16 )),
                      Container(
                        height: 1,
                        width: MediaQuery.of(context).size.width * .35,
                        color: Colors.grey[400]
                      ),
                    ],
                  ),

                  SizedBox(height: 35),
                  Text( 'Username', style: GoogleFonts.getFont('Roboto', color: Color(0xffA0A5B9), fontSize: 16 )),
                  SizedBox(height: 5),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0,), borderSide: BorderSide(color: Color(0xffA0A5B9))),
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0,), borderSide: BorderSide(color: Color(0xffA0A5B9)))
                    ),
                  ),
                  SizedBox(height: 20),
                  Text('Password', style: GoogleFonts.getFont('Roboto', color: Color(0xffA0A5B9), fontSize: 16 )),
                  SizedBox(height: 5),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0,), borderSide: BorderSide(color: Color(0xffA0A5B9))),
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0,), borderSide: BorderSide(color: Color(0xffA0A5B9))),
                      suffixIcon: Icon(Icons.visibility_off_outlined)
                    ),
                  ),

                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: [
                        Switch(
                          inactiveTrackColor: Color(0xff5B69FE),
                          value: false,
                          onChanged: (value){}
                        ),
                        Text('Remenber me', style: GoogleFonts.getFont('Roboto', fontSize: 15 )),
                      ]),
                      Text('Forgot Password?', style: GoogleFonts.getFont('Roboto', fontSize: 15 )),
                    ],
                  ),

                  SizedBox(height: 20),
                  Container(
                    height: 55,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                           Color(0xfff75064),
                           Color(0xffdf3379),
                        ]
                      )
                    ),
                    child: TextButton(
                      child: Text('Login', style: GoogleFonts.getFont('Roboto', fontSize: 22, color: Colors.white )),
                      onPressed: (){},
                    ),
                  ),

                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don\'t have an account ? ', style: GoogleFonts.getFont('Roboto', fontSize: 15 )),
                      Text('Sign Up', style: GoogleFonts.getFont('Roboto', fontSize: 15, color: Color(0xff5B69FE) )),
                    ],
                  ),
               ],
            ),
          ),
        ),
      ),
     );
  }
}

class _ButtonCustom extends StatelessWidget {

  final String text;
  final String icon;

  const _ButtonCustom({ this.text, this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Color(0xffA0A5B9).withOpacity(0.2), spreadRadius: 1, blurRadius: 20)
          ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('Assets/$icon', height: 20),
            SizedBox(width: 15.0),
            Text( text, style: GoogleFonts.getFont('Roboto', color: Color(0xffA0A5B9), fontSize: 16 ))
          ],
        ),
      ),
    );
  }
}