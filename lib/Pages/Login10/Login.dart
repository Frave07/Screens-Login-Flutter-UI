import 'package:flutter/material.dart';
import 'package:nulti_auth/Pages/Login10/Signup.dart';
import 'package:nulti_auth/Pages/Login10/Widgets/Header.dart';
import 'package:nulti_auth/Pages/Login10/Widgets/Logo.dart';
import 'package:nulti_auth/Pages/Login10/Widgets/TextFieldCustom.dart';


class LoginTenPage extends StatelessWidget
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

                HeaderLogin(),
                
                LogoHeader()
              ],
            ),

            _Titulo(),

            SizedBox(height: 40),

            _EmailAndPassword(),

            _ForgotPassword(),

            SizedBox(height: 40),

            _BottonSignIn()
         ],
       )
     );
  }
}

class _BottonSignIn extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Color(0xff5511b0),
        borderRadius: BorderRadius.circular(50)
      ),
      child: TextButton(
        child: Text('SIGN IN', style: TextStyle(color: Colors.white, fontSize: 18)),
        onPressed: (){},
      ),
    );
  }
}

class _ForgotPassword extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 25, top: 20),
      alignment: Alignment.centerRight,
      child: Text('Forgot Password?'),
    );
  }
}

class _EmailAndPassword extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal:20.0),
      child: Column(
        children: [

          TextFieldCustom(icono: Icons.mail_outline, type: TextInputType.emailAddress,texto: 'Email Address' ),
          SizedBox(height: 20),
          TextFieldCustom(icono: Icons.visibility_off, type: TextInputType.text, pass: true, texto: 'Password'),
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

          Text('SIGN IN', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),

          Text('/', style: TextStyle(fontSize: 25, color: Colors.grey)),
          
          TextButton(
            onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => SignUpTenPage())),
            child: Text('SIGN UP', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.grey))
          )

        ],
      ),
    );
  }
}

