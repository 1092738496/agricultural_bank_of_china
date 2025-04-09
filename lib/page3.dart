import 'package:agricultural_bank_of_china/page4.dart';
import 'package:flutter/material.dart';

class page3_widget extends StatelessWidget {
  const page3_widget({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
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
          "我的贷款",
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
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            height: height * 0.312,
            color: Color.fromRGBO(247, 247, 247, 1),
            child: ListView(
              children: [
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 10, bottom: 20),
                    child: Image.asset("images/img/3.png", width: 140),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      child: Column(
                        children: [
                          Text("0.00", style: TextStyle(fontSize: 18)),
                          Row(
                            children: [
                              Text("未还本金总计(元)", style: TextStyle(fontSize: 15)),
                              SizedBox(width: 8),
                              Icon(
                                Icons.remove_red_eye_rounded,
                                color: Color.fromRGBO(143, 143, 143, 1),
                                size: 18,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(right: 50),
                      child: Column(
                        children: [
                          Text(
                            "0.00",
                            style: TextStyle(fontSize: 18, color: Colors.amber),
                          ),
                          Row(
                            children: [
                              Text("可用额度(元)", style: TextStyle(fontSize: 15)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 1,
                  color: Colors.grey[300],
                ),

                Container(
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: width * 0.12, top: 10),
                        child: Row(
                          children: [
                            ImageIcon(
                              AssetImage("images/icon6/30.png"),
                              size: 20,
                            ),
                            SizedBox(width: 5),
                            Text("应还详情", style: TextStyle(fontSize: 16)),
                          ],
                        ),
                      ),

                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              left: width * 0.18, top: 10),
                            height: 13,
                            width: 1.4,
                            color: Colors.grey[300],
                          ),
                        ],
                      ),

                      Container(
                        margin: EdgeInsets.only(left: width * 0.15, top: 10),
                        child: Row(
                          children: [
                            ImageIcon(
                              AssetImage("images/icon6/date.png"),
                              size: 20,
                            ),
                            SizedBox(width: 5),
                            
                            GestureDetector(
                              onTap: () {
                                // 跳转到目标页面
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => page4_Widget(),
                                  ),
                                );
                              },
                              child: Row(
                                children: [
                                  Text("历史贷款", style: TextStyle(fontSize: 16)),
                                  ImageIcon(
                                    AssetImage(
                                      "images/icon4/upsdk_icon_arrow_right.png",
                                    ),
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            )

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(12),
            child: Text("温馨提示：以上内容仅供参考，如需了解详情请联系您的客户经理。",style: TextStyle(
              color: Color.fromRGBO(106, 103, 106, 1)
            ),),
          )
        ],
      ),
    );
  }
}
