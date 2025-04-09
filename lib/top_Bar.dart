import 'package:flutter/material.dart';

Widget appBarWidget(BuildContext context) {
  final height = MediaQuery.of(context).size.height;
  final width = MediaQuery.of(context).size.width;
  return Container(
    child: AppBar(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      flexibleSpace: Container(
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(top: height * 0.046,left: width * 0.0484),
              child: Column(
                children: [
                  ImageIcon(AssetImage("images/top_bar/unsign_black.png"),size: 21,),
                  Text("抽奖",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w700),),
                ],
              ),
            ),
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(
                  width: 103,
                  height: 63,
                  decoration: const BoxDecoration(
                    color: Color(0xFFE8E8E8),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFFE8E8E8),
                        offset: Offset(8, 8),
                        blurRadius: 10,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 63,
                  height: 63,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFFF7F7F7),
                        offset: Offset(3, 3),
                        blurRadius: 3,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}





