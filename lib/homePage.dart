import 'dart:io';

import 'package:agricultural_bank_of_china/TextScroll.dart';
import 'package:agricultural_bank_of_china/botton_icon.dart';
import 'package:agricultural_bank_of_china/page2.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_shadow/flutter_inset_shadow.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class homePageWidget extends StatefulWidget {
  const homePageWidget({super.key});

  @override
  State<homePageWidget> createState() => _homePageWidget();
}

double getBoxWidth() {
  double screenWidth = 1.sw; // 屏幕宽度
  print("当前手机值是:$screenWidth");
  if (screenWidth < 360) {
    return 100; // 小屏手机
  } else if (screenWidth < 480) {
    return 200; // 中屏手机
  } else {
    return 300; // 大屏/平板
  }
}

class _homePageWidget extends State<homePageWidget> {
  final ScrollController _scrollController = ScrollController();
  // 存储当前滚动的 Y 偏移（竖直方向）
  double _scrollY = 0.0;
  Color get appBarColor =>
      _scrollY < 40 ? Color.fromRGBO(254, 251, 247, 1) : Colors.black;

  @override
  void initState() {
    super.initState();
    /* WidgetsBinding.instance.addPostFrameCallback((_) {
      printDeviceAndBoxWidth();
    }); */
    // 监听滚动事件
    _scrollController.addListener(() {
      setState(() {
        // 每次滚动时更新 scrollY 数值
        _scrollY = _scrollController.offset;
      });

      // 打印滚动位置（你也可以在这里做其他逻辑，比如动画、加载更多）
      /* print('滚动位置: $_scrollY px'); */
    });
  }

  @override
  void dispose() {
    // 页面销毁时释放 ScrollController，避免内存泄漏
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final Size heights = Size.fromHeight(height * 0.0953);

    double hander = 0.4.sh;

    return MediaQuery.removePadding(
      removeTop: Platform.isIOS ? false : true,
      context: context,
      child: Container(
        height: height,
        width: width,
        color: Colors.white,
        child: Stack(
          children: [
            ListView(
              controller: _scrollController,
              children: [
                Stack(
                  children: [
                    Container(
                      width: 1.sw,
                      height: 0.4.sh,
                      child: Image.asset(
                        "images/my_header_background_chun.png",
                        fit: BoxFit.none,
                      ),
                    ),

                    // 底部渐变淡化层
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      height: hander * 0.45, // 渐变高度
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            stops: [0.1, 0.2],
                            colors: [
                              Colors.white10,
                              Colors.white, // 渐变目标色（可改为你的背景色）
                            ],
                          ),
                        ),
                      ),
                    ),

                    //基本功能层
                    Positioned(
                      top: 320.h,
                      left: 0.054.sw,
                      child: Container(
                        padding: EdgeInsets.only(top: 30.h,left: 15.h,right: 15.h),
                        width: 0.88.sw,
                        height: 114,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black45, // 白色 + 透明
                              offset: Offset(0, 4), // 向右下角偏移
                              blurRadius: 8, // 柔  和感
                              spreadRadius: -4, // 控制扩散宽度（可选）
                              inset: false, //  默认就是外阴影
                            ), //  默认就是外阴影
                          ],
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                width: 60,
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "images/icon3/myaccount_kingkong500.png",
                                      width: 40,
                                      height: 40,
                                    ),
                                    SizedBox(height: 18),
                                    Text(
                                      "我的账户",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                width: 50,
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "images/icon3/life_kingkong_chongzhi.png",
                                      width: 40,
                                      height: 40,
                                    ),
                                    SizedBox(height: 18),
                                    Text(
                                      "转账",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                width: 50,
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "images/icon3/income_detail_kingkong500.png",
                                      width: 40,
                                      height: 40,
                                    ),
                                    SizedBox(height: 18),
                                    Text(
                                      "收支",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                width: 50,
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "images/icon3/bar_code_kingkong500.png",
                                      width: 40,
                                      height: 40,
                                    ),
                                    SizedBox(height: 18),
                                    Text(
                                      "扫一扫",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Center(
                  child: FractionallySizedBox(
                    widthFactor: 0.95,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              bottonIcon(
                                iconUrl:
                                    "images/icon1/credit_home_native500.png",
                                name: "信用卡",
                              ),
                              SizedBox(height: 20),
                              bottonIcon(
                                iconUrl:
                                    "images/icon1/epayment_pay_native500.png",
                                name: "生活缴费",
                              ),
                            ],
                          ),
                        ),

                        Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              bottonIcon(
                                iconUrl:
                                    "images/icon1/annuity_webview_native500.png",
                                name: "养老社区",
                              ),
                              SizedBox(height: 20),
                              bottonIcon(
                                iconUrl:
                                    "images/icon1/pop_activity_webview_native500.png",
                                name: "热门活动",
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              bottonIcon(
                                iconUrl:
                                    "images/icon1/deposit_index_native500.png",
                                name: "存款",
                              ),
                              SizedBox(height: 20),
                              bottonIcon(
                                iconUrl:
                                    "images/icon1/haidou_webview_native500.png",
                                name: "小豆乐园",
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              bottonIcon(
                                iconUrl:
                                    "images/icon1/financing_pro_my_native500.png",
                                name: "理财产品",
                              ),
                              SizedBox(height: 20),
                              bottonIcon(
                                iconUrl: "images/icon1/city_zone_native500.png",
                                name: "城市专区",
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              bottonIcon(
                                iconUrl:
                                    "images/icon1/my_loan_overview_native500.png",
                                name: "贷款",
                                page: page2_widget(),
                              ),
                              SizedBox(height: 20),
                              bottonIcon(
                                iconUrl:
                                    "images/icon1/homepage_more_native500.png",
                                name: "全部",
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    SizedBox(width: width * 0.07, height: 55),
                    Container(
                      width: width * 0.85,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 0.2,
                          color: Colors.grey[300]!,
                        ),
                      ),
                    ),
                  ],
                ),

                Column(
                  children: [
                    Container(
                      width: width * 0.88,
                      //margin: EdgeInsets.only(left:width * 0.07),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Image.asset(
                                  "images/icon4/icon_todo_items.png",
                                  width: 46,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "您的月度账单已出,请查看",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 16,
                            height: 16,
                            color: Color.fromRGBO(247, 247, 247, 1),
                            child: Image.asset(
                              "images/icon4/upsdk_icon_arrow_right.png",
                              width: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: width * 0.88,
                      //margin: EdgeInsets.only(left:width * 0.07),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Image.asset(
                                  "images/icon4/icon_toutiao_news.png",
                                  width: 46,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "11箭齐发!中方坚决反制美\"对等关税\"",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),

                                /*  Container(
                                  height: 40,
                                  child: TextCarouselSlider(
                                    messages: [
                                      "中国农业银行服务价格标准(2024)",
                                      "11箭齐发!中方坚决反制美\"对等关税\"",
                                      "中共中央、国务院印发《加快建设农业...",
                                      "金饰价冲向1000元，普通人怎样做好黄...",
                                    ],
                                    textStyle: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ), */
                              ],
                            ),
                          ),
                          Container(
                            width: 16,
                            height: 16,
                            color: Color.fromRGBO(247, 247, 247, 1),
                            child: Image.asset(
                              "images/icon4/upsdk_icon_arrow_right.png",
                              width: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                /* ConstrainedBox(
                  constraints: BoxConstraints.tightFor(
                    width: 200,
                    height: 200,
                  ), // 强制固定宽高
                  child: Image.asset(
                    "images/icon5/0.png",
                    fit: BoxFit.cover, // 推荐用 cover 或 contain
                  ),
                ), */
                Container(
                  height: height * 0.15,
                  width: width,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 15,
                        left: width * 0.024,
                        child: Image.asset(
                          "images/icon5/1.jpg",
                          fit: BoxFit.cover,
                          width: width * 0.94, // 推荐用 cover 或 contain
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  height: height * 0.425,
                  width: width,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 15,
                        left: width * 0.034,
                        child: Image.asset(
                          "images/icon5/2.jpg",
                          fit: BoxFit.cover,

                          width: width * 0.94, // 推荐用 cover 或 contain
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  height: height * 0.285,
                  width: width,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 15,
                        left: width * 0.024,
                        child: Image.asset(
                          "images/icon5/4.jpg",
                          fit: BoxFit.cover,

                          width: width * 0.94, // 推荐用 cover 或 contain
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  height: height * 0.175,
                  width: width,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 15,
                        left: width * 0.024,
                        child: Image.asset(
                          "images/icon5/5.jpg",
                          fit: BoxFit.cover,

                          width: width * 0.94, // 推荐用 cover 或 contain
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  height: height * 0.255,
                  width: width,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 15,
                        left: width * 0.024,
                        child: Image.asset(
                          "images/icon5/6.jpg",
                          fit: BoxFit.cover,

                          width: width * 0.94, // 推荐用 cover 或 contain
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  height: height * 0.28,
                  width: width,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 15,
                        left: width * 0.024,
                        child: Image.asset(
                          "images/icon5/7.jpg",
                          fit: BoxFit.cover,

                          width: width * 0.94, // 推荐用 cover 或 contain
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  height: height * 0.24,
                  width: width,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 15,
                        left: width * 0.024,
                        child: Image.asset(
                          "images/icon5/8.jpg",
                          fit: BoxFit.cover,

                          width: width * 0.94, // 推荐用 cover 或 contain
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            /* Positioned(
              top: 50,
              left: 50,
              child: Text('当前位置: ${_scrollY.toStringAsFixed(1)} px'),
            ), */
            Container(
              color: _scrollY < 40 ? Colors.transparent : Colors.white,
              height: heights.height,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: height * 0.0422,
                      left: width * 0.0484,
                    ),
                    child: Column(
                      children: [
                        ImageIcon(
                          AssetImage(
                            "images/top_bar/icon_home_sign_black_500.png",
                          ),
                          size: 26,
                          color: appBarColor,
                        ),
                        Text(
                          "抽奖",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            color: appBarColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: height * 0.035,
                      left: width * 0.0484,
                    ),
                    width: width * 0.45,
                    height: 33,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color:
                          _scrollY < 40
                              ? Colors.black12
                              : Color.fromRGBO(246, 246, 246, 1),
                      boxShadow: const [
                        // 左上角
                        // 左上角阴影
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(1.5, 1.5),
                          blurRadius: 2,
                          spreadRadius: 0,
                          inset: true,
                        ),
                        BoxShadow(
                          color: Colors.white12, // 白色 + 透明
                          offset: Offset(3.5, 5.5), // 向右下角偏移
                          blurRadius: 8, // 柔和感
                          spreadRadius: -5, // 控制扩散宽度（可选）
                          inset: false, // ✅ 默认就是外阴影
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 8),
                        ImageIcon(
                          AssetImage(
                            "images/top_bar/homepage_searchbar_search_black.png",
                          ),
                          size: 16,
                          color: appBarColor,
                        ),
                        SizedBox(width: 8),
                        SizedBox(
                          width: width * 0.28,
                          child: TextCarouselSlider(
                            messages: ["分期借钱", "热门资讯", "存金通"],
                            textStyle: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color:
                                  _scrollY < 40 ? Colors.white70 : Colors.grey,
                            ),
                          ),
                        ),
                        //SizedBox(width: width*0.17),
                        Expanded(
                          child: ImageIcon(
                            AssetImage(
                              "images/top_bar/ic_assistant_bottom_voice.png",
                            ),
                            size: 22,
                            color: appBarColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: height * 0.0422,
                      left: width * 0.04,
                    ),
                    child: Column(
                      children: [
                        ImageIcon(
                          AssetImage(
                            "images/top_bar/home_black_switch_icon.png",
                          ),
                          size: 26,
                          color: appBarColor,
                        ),
                        Text(
                          "版本",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            color: appBarColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: height * 0.0422,
                      left: width * 0.0484,
                    ),
                    child: Column(
                      children: [
                        ImageIcon(
                          AssetImage("images/top_bar/online_black_500.png"),
                          size: 26,
                          color: appBarColor,
                        ),
                        Text(
                          "客服",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            color: appBarColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: height * 0.0422,
                      left: width * 0.0484,
                    ),
                    child: Column(
                      children: [
                        ImageIcon(
                          AssetImage("images/top_bar/message_black_500.png"),
                          size: 26,
                          color: appBarColor,
                        ),
                        Text(
                          "消息",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: appBarColor,
                          ),
                        ),
                      ],
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
