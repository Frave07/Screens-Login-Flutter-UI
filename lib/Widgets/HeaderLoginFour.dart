import 'package:flutter/material.dart';


class HeaderSignInFour extends StatelessWidget
{

 @override
 Widget build(BuildContext context)
 {
    return Container(
      height: 250,
      width: double.infinity,
      // color: Colors.red,
      child: CustomPaint(
        painter: _HeaderSignInFourPainter(),
      ),
    );
  }
}

class _HeaderSignInFourPainter extends CustomPainter
{
  @override
  void paint(Canvas canvas, Size size) {


    final paint = new Paint();
    paint.color = Color(0xfffedc01);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 5;

    final path = new Path();
    path.moveTo( size.width * .5 , 0);
    path.lineTo( size.width * .5 , size.height * .4);
    path.quadraticBezierTo( size.width * .5 , size.height * .5, size.width * .55 , size.height * .55 );
    path.lineTo( size.width * .8 , size.height * .9);
    path.quadraticBezierTo( size.width * .84 , size.height * .96, size.width * .90, size.height * .91 );
    path.lineTo( size.width, size.height * .8);
    path.lineTo( size.width, 0);

    canvas.drawPath(path, paint);
  }
  
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;

}


class BackGroundSignIn extends StatelessWidget
{

 @override
 Widget build(BuildContext context)
 {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      // color: Colors.red,
      child: CustomPaint(
        painter: _BackGroundSignInPainter(),
      ),
    );
  }
}

class _BackGroundSignInPainter extends CustomPainter
{
  @override
  void paint(Canvas canvas, Size size) {


    final paint = new Paint();
    paint.color = Color(0xff232323);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 5;

    final path = new Path();
    path.moveTo( 0, size.height * .15);
    path.quadraticBezierTo( size.width * .1 , size.height * .105, size.width * .25 , size.height * .15 );
    path.lineTo( size.width * .9, size.height * .43);
    path.quadraticBezierTo( size.width, size.height * .47, size.width, size.height * .55 );
    path.lineTo( size.width , size.height);
    path.lineTo( 0, size.height);
   

    canvas.drawPath(path, paint);
  }
  
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;

}