import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nulti_auth/Widgets/HeaderLoginFive.dart';


class RegisterFivePage extends StatelessWidget
{

 @override
 Widget build(BuildContext context)
 {
    return Scaffold(
      backgroundColor: Color(0xff284855),
      body: SingleChildScrollView(
        child: Stack(
          children: [
             HeaderLoginFive(),
             Positioned(
               top: 60,
               left: 20,
               child: Text('Create an', style: GoogleFonts.getFont('Roboto', color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold))
             ),
             Positioned(
               top: 110,
               left: 20,
               child: Text('Account', style: GoogleFonts.getFont('Roboto', color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold))
             ),

             BottomRegisterFive(),
             
             Positioned(
               top: 250,
               child: _TextFieldCustom(label: 'Full Name', isPass: false)
             ),
             Positioned(
               top: 320,
               child: _TextFieldCustom(label: 'Email', isPass: false)
             ),
             Positioned(
               top: 390,
               child: _TextFieldCustom(label: 'Password', isPass: true)
             ),
             Positioned(
               top: 460,
               child: _TextFieldCustom(label: 'Confirm Password', isPass: true)
             ),
             

             Positioned(
               top: 550,
               left: 15,
               child: TextButton(                
                 onPressed: (){}, 
                 child: Text('Sign Up', style: GoogleFonts.getFont('Roboto', color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold))
               )
             ),

             Positioned(
               top: 720,
               left: 15,
               child: Row(
                 children: [
                  Text('Already have an account? ', style: GoogleFonts.getFont('Roboto', color: Colors.white, fontSize: 17)),
                  GestureDetector(
                    onTap: ()=> Navigator.pushNamed(context, 'loginFivePage'),
                    child: Text('Sign In', style: GoogleFonts.getFont('Roboto', color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold))
                  )
                 ],
               )
             ),
             

          ],
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
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: Container(
        width: MediaQuery.of(context).size.width * .9,
        child: TextField(
          obscureText: isPass,
          decoration: InputDecoration(
            labelText: label,
            labelStyle: TextStyle(color: Colors.white),
            enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white))
          ),
        ),
      ),
    );
  }
}