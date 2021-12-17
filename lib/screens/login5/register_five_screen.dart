import 'package:flutter/material.dart';
import 'package:nulti_auth/Widgets/HeaderLoginFive.dart';
import 'package:nulti_auth/widgets/widgets.dart';


class RegisterFivePage extends StatelessWidget{

 @override
 Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xff284855),
      body: SingleChildScrollView(
        child: Stack(
          children: [
             HeaderLoginFive(),
             Positioned(
               top: 60,
               left: 20,
               child: const TextFrave(text:'Create an', color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold)
             ),
             Positioned(
               top: 110,
               left: 20,
               child: const TextFrave(text: 'Account', color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold)
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
                 child: const TextFrave(text:'Sign Up', color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold)
               )
             ),

             Positioned(
               top: 720,
               left: 15,
               child: Row(
                 children: [
                  const TextFrave(text: 'Already have an account? ', color: Colors.white, fontSize: 17),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, 'loginFivePage'),
                    child: const TextFrave(text: 'Sign In', color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold)
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

  const _TextFieldCustom({ required this.label, required this.isPass });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
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