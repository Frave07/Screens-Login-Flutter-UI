import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nulti_auth/Widgets/HeaderLogin3.dart';


class VerificationThreePage extends StatelessWidget
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
                  HeaderVerificationThree(),
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
                    top: 120,
                    right: 20,
                    child: Icon(Icons.trip_origin, color: Colors.white38, size: 35)
                  ),
                  Positioned(
                    top: 130,
                    left: 40,
                    child: Icon(Icons.trip_origin, color: Colors.white38, size: 35)
                  ),
                  Positioned(
                    top: 140,
                    left: 95,
                    child: Text('Verification', style: GoogleFonts.getFont('Inter', color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold))
                  ),
                  Positioned(
                    top: 180,
                    left: 50,
                    child: Text('A 6-digit code sent to your email or phone', style: GoogleFonts.getFont('Inter', color: Colors.white, fontSize: 15))
                  ),
                  Positioned(
                    top: 200,
                    left: 100,
                    child: Text('Enter the code to continue', style: GoogleFonts.getFont('Inter', color: Colors.white, fontSize: 15))
                  ),
               ],
             ),
             
              SizedBox(height: 50),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: TextField(
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black, fontSize: 17,letterSpacing: 5, fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white), borderRadius: BorderRadius.circular(10.0)),
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white), borderRadius: BorderRadius.circular(10.0)),
                    labelStyle: TextStyle(color: Colors.black),
                    hintText: '_ _ _ _ _ _', 
                    hintStyle: TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: Colors.white
                  )
                ),
              ),
              
              SizedBox(height: 20),
              Text('Didn\'t receive the code? Click Here', style: GoogleFonts.getFont('Inter', color: Colors.grey, fontSize: 16)),

              SizedBox(height: 80),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xffEAEFF5),
                    borderRadius: BorderRadius.circular(7.0)
                  ),
                  child: Center(child: Text('Continue', style: GoogleFonts.getFont('Inter', color: Colors.grey[700], fontSize: 17))),
                ),
              ),
           ],
        ),
      ),
     );
  }
}

