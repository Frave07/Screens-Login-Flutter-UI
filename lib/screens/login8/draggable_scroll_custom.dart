import 'package:flutter/material.dart';
import 'package:nulti_auth/widgets/widgets.dart';

class DraggableScrollCustom extends StatelessWidget{

  final ScrollController scrollController;

  const DraggableScrollCustom({Key? key, required this.scrollController}) : super(key: key);

 @override
 Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40)),
        boxShadow: [
          BoxShadow(color: Colors.grey, blurRadius: 10.0)
        ]
      ),
      child: ListView(
        controller: scrollController,
        children: [

          Center(
            child: Container(
              height: 4.0,
              width: 50,
              decoration: BoxDecoration(
                color: Color(0xff353759),
                borderRadius: BorderRadius.circular(50)
              ),
            ),
          ),

          const SizedBox(height: 30),
          const TextFrave(text: 'Create Account', fontSize: 28, color: Color(0xff353759), fontWeight: FontWeight.bold),

          const SizedBox(height: 50),

          _TextFieldCustom(text: 'Name', icon: Icons.person_outline_outlined),
          const SizedBox(height: 30),
          _TextFieldCustom(text: 'E-mail', icon: Icons.email_outlined),
          const SizedBox(height: 30),
          _TextFieldCustom(text: 'Password', icon: Icons.vpn_key_outlined),

          const SizedBox(height: 90),
          Container(
            height: 55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: Color(0xff353759),
            ),
            child: TextButton(
              child: const TextFrave(text: 'Sign Up', fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),
              onPressed: (){},
            ),
          ),

        ],
      ),
    );
  }
}

class _TextFieldCustom extends StatelessWidget {
  
  final String text;
  final IconData icon;

  const _TextFieldCustom({ required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        decoration: InputDecoration(
          labelText: text,
          labelStyle: TextStyle(color: Colors.black),
          suffixIcon: Icon(icon),
          border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey[200]!))
        ),
      ),
    );
  }
}