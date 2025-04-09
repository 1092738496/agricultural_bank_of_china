import 'package:flutter/material.dart';

class page4_Widget extends StatelessWidget {
  const page4_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(247, 247, 247, 1),
        toolbarHeight: 45,
        /* backgroundColor: Colors.transparent, */
        // ✅ 透明显示灰底
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          // 左侧图标（比如返回按钮）
          icon: Image.asset(
            "images/top_bar/ic_assistant_back.png",
            width: 22, // 可选：设置宽度
            height: 22, // 可选：设置高度
            color: Color.fromRGBO(53, 53, 53, 1),
          ),

          onPressed: () {
            Navigator.pop(context); // 返回上一页
          },
        ),
        title: Text(
          "历史贷款",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
        ),
      ),
      body: homed(),
    );
  }
}

class homed extends StatelessWidget {
  const homed({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(247, 247, 247, 1),
      child: Center(
        child: Image.asset("images/img/3.png",width: 155,),
      ),
    );
  }
}