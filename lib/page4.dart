import 'package:agricultural_bank_of_china/page5.dart';
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
      color: Colors.white,
      child: Container(
        child: ListView(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => page5_Widget()),
                );
              },
              child: Container(
                margin: EdgeInsets.only(top: 10, left: 20, right: 20),
                decoration: BoxDecoration(
                  color: Colors.white, // 可选：背景色
                  borderRadius: BorderRadius.circular(8), // 可选：圆角
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "个人住房贷款",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    ImageIcon(
                      AssetImage("images/icon4/upsdk_icon_arrow_right.png"),
                      color: Colors.grey[400],
                      size: 32,
                    ),
                  ],
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 10, left: 20, right: 20),
              height: 1,
              color: Colors.grey[300],
            ),

            Container(
              margin: EdgeInsets.only(top: 10, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "合同额度",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "¥500,000.00",
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 10, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "合同到期日",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "2052-05-11",
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 10, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "报税信息",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Image(image: AssetImage("images/icon4/i.png"), width: 18),
                    ],
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 10, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "合同详情",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  ImageIcon(
                    AssetImage("images/icon4/expand_icon_txsx.png"),
                    color: Colors.grey[400],
                    size: 16,
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 10, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "合同到期日",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "10545945000073844",
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 10, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "合同到签订日期",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "2022-05-12",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
