import 'package:flutter/material.dart';
import 'package:nulti_auth/widgets/widgets.dart';


class MainPage extends StatelessWidget{

 @override
 Widget build(BuildContext context){

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: TextFrave( text: 'Frave Developer', color: Colors.black87, fontWeight: FontWeight.w500 ),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SafeArea(  
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              _ButtonCustom(title: 'Login One',   onPressed: ()=> Navigator.of(context).pushNamed('introPageOne')),
              _ButtonCustom(title: 'Login Two',   onPressed: ()=> Navigator.of(context).pushNamed('loginTwoPage')),
              _ButtonCustom(title: 'Login Three', onPressed: ()=> Navigator.of(context).pushNamed('loginThree')),
              _ButtonCustom(title: 'Login Four',  onPressed: ()=> Navigator.of(context).pushNamed('signInFourPage')),
              _ButtonCustom(title: 'Login Five',  onPressed: ()=> Navigator.of(context).pushNamed('loginFivePage')),
              _ButtonCustom(title: 'Login Six',   onPressed: ()=> Navigator.of(context).pushNamed('loginSixPage')),
              _ButtonCustom(title: 'Login Seven', onPressed: ()=> Navigator.of(context).pushNamed('loginSevenPage')),
              _ButtonCustom(title: 'Login Eight', onPressed: ()=> Navigator.of(context).pushNamed('loginEightPage')),
              _ButtonCustom(title: 'Login Nine',  onPressed: ()=> Navigator.of(context).pushNamed('LoginNinePage')),
              _ButtonCustom(title: 'Login Ten',   onPressed: ()=> Navigator.of(context).pushNamed('LoginTenPage')),

            ],
          ),
        ),
      )
     );
  }
}

class _ButtonCustom extends StatelessWidget {
  
  final VoidCallback onPressed;
  final String title;

  const _ButtonCustom({required this.onPressed, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: InkWell(
        onTap: onPressed,
        splashColor: Color(0xffEFF3F6),
        child: Container(
          height: 55,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Color(0xff2954DE)
          ),
          child: Center(
            child: TextFrave(text: title, color: Colors.white, fontSize: 19, fontWeight: FontWeight.w500)
          ),
        ),
      ),
    );
  }
}