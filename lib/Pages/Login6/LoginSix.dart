import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class LoginSixPage extends StatelessWidget
{

 @override
 Widget build(BuildContext context)
 {
    return Scaffold(
      backgroundColor: Color(0xff1E1E1F),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                SizedBox(height: 40),
                Center(child: Image.asset('Assets/logo.png', height: 150)),
                SizedBox(height: 20),
                Text('Welcome', style: GoogleFonts.getFont('Roboto', color: Colors.white, fontSize: 35 )),
                Text('Back', style: GoogleFonts.getFont('Roboto', color: Colors.white, fontSize: 35 )),

                SizedBox(height: 30),
                _TextFieldCustom(label: 'Email', isPass: false,),
                SizedBox(height: 20),
                _TextFieldCustom(label: 'Password', isPass: true),

                SizedBox(height: 60),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Sign In', style: GoogleFonts.getFont('Roboto', color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold )),
                    InkWell(
                      onTap: (){},
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.topRight,
                            colors: [
                              Color(0xffDF2C2C),
                              Color(0xffFA645C),
                            ]
                          )
                        ),
                        child: Icon(Icons.arrow_forward, size: 35, color: Colors.white),
                      ),
                    )
                  ],
                ),

                SizedBox(height: 80),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: ()=> Navigator.pushNamed(context, 'registerSixPage'),
                      child: Text('Sign Up', style: GoogleFonts.getFont('Roboto', color: Colors.white, fontSize: 20))
                    ),
                    Text('Forgot Password?', style: GoogleFonts.getFont('Roboto', color: Colors.white, fontSize: 20)),
                    
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

class _TextFieldCustom extends StatelessWidget {
  
  final String label;
  final bool isPass;

  const _TextFieldCustom({ this.label, this.isPass });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .9,
      child: TextField(
        obscureText: isPass,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(color: Colors.white),
          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white))
        ),
      ),
    );
  }
}