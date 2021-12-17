import 'package:flutter/material.dart';


class HeaderLogin extends StatelessWidget
{

 @override
 Widget build(BuildContext context)
 {
    return Container(
        height: 250,
        width: double.infinity,
        child: CustomPaint(
          painter: _HeaderLoginPainter(),
        ),
    );
  }
}

class _HeaderLoginPainter extends CustomPainter
{
  @override
  void paint(Canvas canvas, Size size)
  {
    final paint = new Paint();
    paint.color = Color(0xff5511b0);
    paint.style = PaintingStyle.fill;

    final path = new Path();
    path.lineTo(0, size.height * 1.0);
    path.lineTo( size.width * 0.2, size.height * 0.8);
    path.lineTo( size.width, size.height * 1.0);
    path.lineTo( size.width, 0);


    canvas.drawPath(path, paint); 
  }
  
    @override
    bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
  
}

class HeaderSignUp extends StatelessWidget
{

 @override
 Widget build(BuildContext context)
 {
    return Container(
        height: 250,
        width: double.infinity,
        child: CustomPaint(
          painter: _HeaderSignUpPainter(),
        ),
    );
  }
}

class _HeaderSignUpPainter extends CustomPainter
{
  @override
  void paint(Canvas canvas, Size size)
  {
    final paint = new Paint();
    paint.color = Color(0xff5511b0);
    paint.style = PaintingStyle.fill;

    final path = new Path();
    path.lineTo(0, size.height * 1.0);
    path.lineTo( size.width * 0.8, size.height * 0.8);
    path.lineTo( size.width, size.height * 1.0);
    path.lineTo( size.width, 0);


    canvas.drawPath(path, paint); 
  }
  
    @override
    bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
  
}