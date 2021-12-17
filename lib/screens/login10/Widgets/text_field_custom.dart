import 'package:flutter/material.dart';


class TextFieldCustom extends StatelessWidget {

  final IconData icono;
  final TextInputType type;
  final bool pass;
  final String texto;

  const TextFieldCustom({ Key? key, required this.icono, required this.type, this.pass = false,  required this.texto }): super(key: key);

 @override
 Widget build(BuildContext context){
    return TextField(
      keyboardType: type,
      obscureText: pass,
      decoration: InputDecoration(
        hintText: texto,
        filled: true,
        fillColor: Color(0xffEBDCFA),
        prefixIcon: Icon( icono, color: Colors.grey),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xffEBDCFA)),
          borderRadius: BorderRadius.circular(50)
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xffEBDCFA)),
          borderRadius: BorderRadius.circular(50),
        ),
        
      ),
    );
  }
}