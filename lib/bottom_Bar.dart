import 'package:flutter/material.dart';

class buttonBarWidget extends StatelessWidget {
  const buttonBarWidget({
    super.key,
    required int currentIndex,
    required this.onTap,
  }) : _currentIndex = currentIndex;

  final int _currentIndex;
  final Function(int) onTap;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 1),
      decoration: BoxDecoration(
        border: Border.all(width: 0, color: Color.fromRGBO(255, 255, 255, 1)),
      ),
      height: 53,
      child: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color.fromRGBO(0, 0, 0, 1),
        unselectedItemColor: Color.fromRGBO(106, 106, 106, 1),
        currentIndex: this._currentIndex,
        onTap: this.onTap,
        items: [
          BottomNavigationBarItem(
            label: "首页",
            icon: Column(
              children: [
                Image.asset(
                  "images/bottom_bar/main_xhtml_native.png",
                  width: 28,
                  height: 28,
                ),
                SizedBox(height: 2),
              ],
            ),
            activeIcon: Column(
              children: [
                Image.asset(
                  "images/bottom_bar/main_xhtml_native_s.png",
                  width: 28,
                  height: 28,
                ),
                SizedBox(height: 2),
              ],
            ),
          ),
          BottomNavigationBarItem(
            label: "财富",
            icon: Column(
              children: [
                Image.asset(
                  "images/bottom_bar/invest_xhtml_native.png",
                  width: 28,
                  height: 28,
                ),
                SizedBox(height: 2),
              ],
            ),
            activeIcon: Column(
              children: [
                Image.asset(
                  "images/bottom_bar/invest_xhtml_native_s.png",
                  width: 28,
                  height: 28,
                ),
                SizedBox(height: 2),
              ],
            ),
          ),
          BottomNavigationBarItem(
            label: "生活",
            icon: Column(
              children: [
                Image.asset(
                  "images/bottom_bar/life_xhtml_native.png",
                  width: 28,
                  height: 28,
                ),
                SizedBox(height: 2),
              ],
            ),
            activeIcon: Column(
              children: [
                Image.asset(
                  "images/bottom_bar/life_xhtml_native_s.png",
                  width: 28,
                  height: 28,
                ),
                SizedBox(height: 2),
              ],
            ),
          ),
          BottomNavigationBarItem(
            label: "乡村振兴",
            icon: Column(
              children: [
                Image.asset(
                  "images/bottom_bar/ic_rural.png",
                  width: 28,
                  height: 28,
                ),
                SizedBox(height: 2),
              ],
            ),
            activeIcon: Column(
              children: [
                Image.asset(
                  "images/bottom_bar/ic_rural_s.png",
                  width: 28,
                  height: 28,
                ),
                SizedBox(height: 2),
              ],
            ),
          ),
          BottomNavigationBarItem(
            label: "我的",
            icon: Column(
              children: [
                Image.asset(
                  "images/bottom_bar/my_xhtml_native.png",
                  width: 28,
                  height: 28,
                ),
                SizedBox(height: 2),
              ],
            ),
            activeIcon: Column(
              children: [
                Image.asset(
                  "images/bottom_bar/my_xhtml_native_s.png",
                  width: 28,
                  height: 28,
                ),
                SizedBox(height: 2),
              ],
            ),
          ),
        ],
        selectedLabelStyle: TextStyle(
          fontSize: 10,
          height: 1.2,
          fontWeight: FontWeight.w700,
          color: Color.fromRGBO(0, 0, 0, 1), // 选中时的颜色
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: 10,
          height: 1.2,
          fontWeight: FontWeight.w700,
          color: Color.fromRGBO(106, 106, 106, 1), // 未选中时的颜色
        ),
      ),
    );
  }
}
