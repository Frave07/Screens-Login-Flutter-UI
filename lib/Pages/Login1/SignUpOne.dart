import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class SignUpOnePage extends StatelessWidget
{

 @override
 Widget build(BuildContext context)
 {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              SizedBox(height: 10),
              Container(
                height: kToolbarHeight,
                width: double.infinity,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Welcome To Frave', style: GoogleFonts.getFont('Inter', fontSize: 25, fontWeight: FontWeight.bold)),
                )
              ),

              Text('Hello, I guess you are new around here. You', style: TextStyle(color: Colors.grey, fontSize: 16)),
              SizedBox(height: 5),
              Text('can start using the application after sign up.', style: TextStyle(color: Colors.grey, fontSize: 16)),
              SizedBox(height: 30),

              _TextFieldCustom(label: 'Username', icon: Icons.person_outline_outlined),
              _TextFieldCustom(label: 'Email Address', icon: Icons.email_outlined),
              _TextFieldCustom(label: 'Password', icon: Icons.lock_outline_rounded),
              _TextFieldCustom(label: 'Repeat Password', icon: Icons.lock_outline_rounded),

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
                    child: Text('Sign Up', style: GoogleFonts.getFont('Inter', color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500))
                  ),
                ),
              ),

              Container(
                height: MediaQuery.of(context).size.height * 0.28,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have an account? ',style: GoogleFonts.getFont('Inter', fontSize: 17, color: Color(0xff757999))),
                      GestureDetector(
                        onTap: () => Navigator.of(context).pushNamed('loginOne'),
                        child: Text('Sign In',style: GoogleFonts.getFont('Inter', fontSize: 17, fontWeight: FontWeight.bold))
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      )
     );
  }
}

class _TextFieldCustom extends StatelessWidget {
  
  final String label;
  final IconData icon;

  const _TextFieldCustom({this.label, this.icon}); 

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.only(bottom: 20.0),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xfff3f4f6),
          hintText: label,
          hintStyle: TextStyle(color: Colors.grey[400]),
          prefixIcon: Icon(icon),
          border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(8.0)),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).primaryColor)
          ),
          floatingLabelBehavior: FloatingLabelBehavior.never,
        ),
      ),
    );
  }
}