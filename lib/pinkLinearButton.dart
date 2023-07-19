import 'package:flutter/material.dart';

class PinkLinearButton extends StatelessWidget {
  final Function onTap;
  final String title;
  final double fontsize;
  const PinkLinearButton(
      {super.key,
      required this.onTap,
      required this.title,
      required this.fontsize});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: const LinearGradient(
                //渐变位置
                begin: Alignment.centerLeft, //右上
                end: Alignment.centerRight, //左下
                stops: [
                  0.0,
                  1.0
                ], //[渐变起始点, 渐变结束点]
                //渐变颜色[始点颜色, 结束颜色]
                colors: [
                  Color.fromRGBO(255, 98, 120, 1),
                  Color.fromRGBO(254, 28, 110, 1)
                ])),
        child: ElevatedButton(
            onPressed: () {
              onTap();
            },
            style: ButtonStyle(
                elevation: MaterialStateProperty.all(0),
                backgroundColor: MaterialStateProperty.all(Colors.transparent)),
            child: Center(
                child: Text(title,
                    style: TextStyle(
                        fontSize: fontsize, fontWeight: FontWeight.bold,color: Colors.white)))));
  }
}
