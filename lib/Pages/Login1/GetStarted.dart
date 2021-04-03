import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class GetStartedPage extends StatelessWidget
{

 @override
 Widget build(BuildContext context)
 {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [

          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('Assets/logo-black.png', height: 180),
                SizedBox(height: 15),
                Text('Frave Programmer', style: GoogleFonts.getFont('Inter', fontWeight: FontWeight.bold, fontSize: 25)),
                SizedBox(height: 15),
                Text('All news in one place, be the'),
                Text('first to know last news'),
              ],
            ),
          ),

          Positioned(
            left: 10,
            right: 10,
            bottom: 10,
            child: InkWell(
              onTap: () => Navigator.of(context).pushNamed('loginOne'),
              child: Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color(0xff2C75DC)
                ),
                child: Center(
                  child: Text('Get Started', style: GoogleFonts.getFont('Inter', color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500))
                ),
              ),
            ),
          )

        ],
      )
     );
  }
}