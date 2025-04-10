import 'package:flutter/material.dart';

class page5_Widget extends StatelessWidget {
  const page5_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
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
          "贷款详情",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
        ),
        actions: [
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
    return Container(
      color: Colors.white,
      child: ListView(
        children: [
          Container(height: 15, color: Color.fromRGBO(245, 245, 245, 1)),
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 20),
              child: Image.asset("images/icon4/2.png", width: 180),
            ),
          ),

          Container(
            margin: EdgeInsets.only(left: 50,right: 50,top: 30),
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text("500,000.00",style: TextStyle(
                    fontSize: 18
                  ),),
                  Text(
                    "总额度(元)",
                    style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                  ),
                ],
              ),
              Column(
                children: [
                  Text("500,000.00", style: TextStyle(fontSize: 18)),
                  Text(
                    "已用额度(元)",
                    style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                  ),
                ],
              )
              /* Container(
                margin: EdgeInsets.only(top: 30,left: 30,right: 30),
                child: Image.asset("images/icon4/3.png", width: 90)),
              Container(
                margin: EdgeInsets.only(top: 30, left: 30, right: 30),
                child: Image.asset("images/icon4/3.png", width: 90)), */
            ],
          ),
          ),

          Container(
            margin: EdgeInsets.only(top: 20),
            height: 1.5,
            color: Colors.grey[300],
          ),

          Container(
            height: 60,
          ),
          
          Container(
            height: 8,
            color: Colors.grey[300],
          ),

          Container(
            margin: EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "贷款放日",
                  style: TextStyle(fontSize: 18, 
                    color: Colors.grey[700]
                  ),
                ),
                Text(
                  "2022年5月13日",
                  style: TextStyle(fontSize: 18, color: Colors.grey[700]),
                ),
              ],
            ),
          ),


          Container(
            margin: EdgeInsets.only(top: 12, left: 20, right: 20),
            height: 1.2,
            color: Colors.grey[200],
          ),

          Container(
            margin: EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "贷款金额",
                  style: TextStyle(fontSize: 16, ),
                ),
                Text(
                  "500,000.00元",
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
                Text("未还本金", style: TextStyle(fontSize: 16)),
                Text(
                  "0元",
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
                        "贷款年化利率",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Image(image: AssetImage("images/icon4/i.png"),width: 18,)
                    ],
                  ),
                Text(
                  "3.65%",
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
                Text("利率定价方式", style: TextStyle(fontSize: 16)),
                Text(
                  "浮动利率",
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
                Text("利率定价基准", style: TextStyle(fontSize: 16)),
                Text(
                  "LPR",
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
                Text("利率浮动幅度", style: TextStyle(fontSize: 16)),
                Text(
                  "-30bp",
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
                Text("重定价周期", style: TextStyle(fontSize: 16)),
                Text(
                  "12个月",
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
                Text("重定价日", style: TextStyle(fontSize: 16)),
                Text(
                  "5月13日",
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
                Text("贷款到期日", style: TextStyle(fontSize: 16)),
                Text(
                  "2052年5月12日",
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
                Text("贷款状态", style: TextStyle(fontSize: 16)),
                Text(
                  "正常",
                  style: TextStyle(fontSize: 16, color: Colors.black54),
                ),
              ],
            ),
          ),


        ],
      ),
    );
  }
}
