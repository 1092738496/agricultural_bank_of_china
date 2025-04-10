import 'package:agricultural_bank_of_china/page3.dart';
import 'package:flutter/material.dart';

class page2_widget extends StatelessWidget {
  const page2_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 45,
        backgroundColor: Colors.white,
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
            print("aaa");
            Navigator.pop(context); // 返回上一页
          },
        ),
        title: Text(
          "贷款",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
        ),
        actions: [
          IconButton(
            icon: Image.asset(
              "images/top_bar/message_black_500.png",
              width: 28, // 可选：设置宽度
              height: 28, // 可选：设置高度
              color: Colors.grey[600],
              colorBlendMode: BlendMode.srcIn,
            ),
            onPressed: () {
              // 搜索功能
            },
          ),
          IconButton(
            icon: Transform.translate(
              offset: Offset(-6, 0), // 向左移动 8 像素
              child: Image.asset(
                "images/top_bar/online_black_500.png",
                width: 28,
                height: 28,
                color: Colors.grey[600],
                colorBlendMode: BlendMode.srcIn,
              ),
            ),

            onPressed: () {
              // 更多选项
            },
          ),
        ],
      ),
      body: homed(),
    );
  }
}

class homed extends StatelessWidget {
  const homed({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      child: ListView(
        children: [
          Stack(
            children: [
              Image.asset("images/icon6/0.jpg", fit: BoxFit.cover),

              Positioned(
                left: 20,
                top: 30,
                child: Row(
                  children: [
                    Text(
                      "未还本金总计",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.remove_red_eye_sharp,
                      color: Colors.white,
                      size: 16,
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 120,
                bottom: 25,
                child: Text(
                  "0.00", // 你的文本内容
                  style: TextStyle(
                    color: Colors.white, // 设置为链接样式
                    fontSize: 18,
                  ),
                ),
              ),
              Positioned(
                left: 170,
                bottom: 25,
                child: Text(
                  "元", // 你的文本内容
                  style: TextStyle(
                    color: Colors.white, // 设置为链接样式
                    fontSize: 16,
                  ),
                ),
              ),
              Positioned(
                right: 10,
                bottom: 25,
                child: GestureDetector(
                  onTap: () {
                    // 跳转到目标页面
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => page3_widget()),
                    );
                  },
                  child: Row(
                    children: [
                      Text(
                        "查看详情", // 你的文本内容
                        style: TextStyle(
                          color: Colors.white, // 设置为链接样式
                          fontSize: 16,
                        ),
                      ),
                      ImageIcon(
                        AssetImage("images/icon4/upsdk_icon_arrow_right.png"),
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          Container(
            margin: EdgeInsets.only(left: width * 0.024, top: 28),
            child: Stack(
              children: [
                Positioned(
                  child: Image.asset(
                    "images/icon6/1.jpg",
                    fit: BoxFit.cover,
                    width: width * 0.94,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: width * 0.024, top: 14),
            child: Stack(
              children: [
                Positioned(
                  child: Image.asset(
                    "images/icon6/2.jpg",
                    fit: BoxFit.cover,
                    width: width * 0.94,
                  ),
                ),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(left: width * 0.024, top: 14),
            child: Stack(
              children: [
                Positioned(
                  child: Image.asset(
                    "images/icon6/3.jpg",
                    fit: BoxFit.cover,
                    width: width * 0.94,
                  ),
                ),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(left: width * 0.024, top: 14),
            child: Stack(
              children: [
                Positioned(
                  child: Image.asset(
                    "images/icon6/4.jpg",
                    fit: BoxFit.cover,
                    width: width * 0.94,
                  ),
                ),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(left: width * 0.024, top: 8),
            child: Stack(
              children: [
                Positioned(
                  child: Image.asset(
                    "images/icon6/5.jpg",
                    fit: BoxFit.cover,
                    width: width * 0.94,
                  ),
                ),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(left: width * 0.024, top: 15),
            child: Stack(
              children: [
                Positioned(
                  child: Image.asset(
                    "images/icon6/6.jpg",
                    fit: BoxFit.cover,
                    width: width * 0.94,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
