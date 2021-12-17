import 'package:flutter/material.dart';
import 'package:nulti_auth/widgets/widgets.dart';


class SignUpTwoPage extends StatelessWidget{

 @override
 Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xff1f2226),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                const SizedBox(height: 20),
                Center(child: Image.asset('Assets/logo.png', height: 150)),
                const SizedBox(height: 20),

                const TextFrave(text: 'Create account', color: Colors.white, fontSize: 32),
                const SizedBox(height: 20),

                _TextFieldCustom(text: 'Name'),
                _TextFieldCustom(text: 'Email'),
                _TextFieldCustom(text: 'Password'),
                _TextFieldCustom(text: 'Phone Number'),



                _ButtonCustom(color: Color(0xff3AC361),text: 'Sign Up'),
                _ButtonCustom(color: Color(0xff2f343a),text: 'Log In', onPressed: ()=> Navigator.of(context).pushNamed('loginTwoPage'),),

                const SizedBox(height: 20),
                const Align(
                  alignment: Alignment.center,
                  child: TextFrave(text: 'Continue as guest', color: Colors.white, fontSize: 15),
                ),
              ],
            ),
          ),
        ),
      )
     );
  }
}

class _TextFieldCustom extends StatelessWidget {
  
  final String text;

  const _TextFieldCustom({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.0),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xff1b1e21),
          hintText: text,
          hintStyle: TextStyle(color: Colors.white),
          border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(15.0))
        ),
      ),
    );
  }
}

class _ButtonCustom extends StatelessWidget {
  
  final String text;
  final Color color;
  final VoidCallback? onPressed;

  const _ButtonCustom({ required this.text, required this.color, this.onPressed});

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
            child: Center(
              child: TextFrave(text: text, color: Colors.white, fontSize: 16)
            ),
          ),
        ),
      ),
    );
  }
}