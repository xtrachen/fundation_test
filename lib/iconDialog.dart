import 'package:flutter/material.dart';
import 'pinkLinearButton.dart';

class IconDialog extends Dialog {
  final String title;
  final String detail;
  final String confirmStr;
  const IconDialog({super.key,required this.title, required this.detail, required this.confirmStr});
 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Center(
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              width: double.infinity,
              height: 300,
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                      height: 30,
                      child: Text(title,
                          style: const TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 20,
                              color: Colors.black))),
                  const SizedBox(height: 10),
                  SizedBox(
                      height: 20,
                      child: Text(detail,
                          style: const TextStyle(
                              decoration: TextDecoration.none,
                              color: Colors.grey,
                              fontSize: 12))),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child:PinkLinearButton(onTap: (){}, title: '确定', fontsize: 20))
                ],
              ))),
    );
  }
}
