import 'package:flutter/material.dart';
import 'package:nulti_auth/Pages/Login10/Login.dart';
import 'package:nulti_auth/Pages/Login10/Widgets/Header.dart';
import 'package:nulti_auth/Pages/Login10/Widgets/Logo.dart';
import 'package:nulti_auth/Pages/Login10/Widgets/TextFieldCustom.dart';


class SignUpTenPage extends StatelessWidget
{

 @override
 Widget build(BuildContext context)
 {
    return Scaffold(
       body: ListView(
         padding: EdgeInsets.only(top:0),
         physics: BouncingScrollPhysics(),
         children: [

            Stack(
              children: [

                HeaderSignUp(),

                LogoHeader()
              ],
            ),

            _Titulo(),

            _TextField(),

            _Botton()
         ],
       )
     );
  }
}

class _Botton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Color(0xff5511b0),
        borderRadius: BorderRadius.circular(50)
      ),
      child: TextButton(
        child: Text('SIGN UP', style: TextStyle(color: Colors.white, fontSize: 18)),
        onPressed: (){},
      ),
    );
  }
}

class _TextField extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal:20.0),
      child: Column(
        children: [

          TextFieldCustom(icono: Icons.person, type: TextInputType.text,texto: 'Username' ),
          SizedBox(height: 20),
          TextFieldCustom(icono: Icons.mail_outline, type: TextInputType.emailAddress,texto: 'Email Address' ),
          SizedBox(height: 20),
          TextFieldCustom(icono: Icons.phone, type: TextInputType.number,texto: 'Mobile' ),
          SizedBox(height: 20),
          TextFieldCustom(icono: Icons.visibility_off, type: TextInputType.text, pass: true, texto: 'Password'),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

class _Titulo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: Row(
        children: [

          
          TextButton(
            onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => LoginTenPage())),
            child: Text('SIGN IN', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.grey)),
          ),

          Text('/', style: TextStyle(fontSize: 25, color: Colors.grey)),
          
          TextButton(
            onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => SignUpTenPage())),
            child: Text('SIGN UP', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black))
          )

        ],
      ),
    );
  }
}