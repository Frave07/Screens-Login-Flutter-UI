import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nulti_auth/Widgets/HeaderLoginFive.dart';


class LoginFivePage extends StatelessWidget
{

 @override
 Widget build(BuildContext context)
 {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
             HeaderLoginFive(),
             Positioned(
               top: 60,
               left: 20,
               child: Text('Welcome', style: GoogleFonts.getFont('Roboto', color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold))
             ),
             Positioned(
               top: 110,
               left: 20,
               child: Text('Back', style: GoogleFonts.getFont('Roboto', color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold))
             ),

             BottomLoginFive(),
             
             Positioned(
               top: 270,
               child: _TextFieldCustom(label: 'Email', isPass: false)
             ),
             Positioned(
               top: 340,
               child: _TextFieldCustom(label: 'Password', isPass: true)
             ),
             Positioned(
               top: 420,
               left: 15,
               child: Text('Forgot Password?', style: GoogleFonts.getFont('Roboto', color: Colors.grey, fontSize: 16))
             ),
             Positioned(
               top: 460,
               left: 15,
               child: TextButton(                
                 onPressed: (){}, 
                 child: Text('Sign In', style: GoogleFonts.getFont('Roboto', color: Colors.grey[700], fontSize: 25, fontWeight: FontWeight.bold))
               )
             ),

             Positioned(
               top: 720,
               left: 15,
               child: Row(
                 children: [
                  Text('Don\'t have an account? ', style: GoogleFonts.getFont('Roboto', color: Colors.white, fontSize: 17)),
                  GestureDetector(
                    onTap: ()=> Navigator.pushNamed(context, 'registerFivePage'),
                    child: Text('Sign Up', style: GoogleFonts.getFont('Roboto', color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold))
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
            labelStyle: TextStyle(color: Colors.grey[700]),
            enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey[700]))
          ),
        ),
      ),
    );
  }
}