  import 'package:agricultural_bank_of_china/bottom_Bar.dart';
  import 'package:agricultural_bank_of_china/homepage.dart';
  import 'package:agricultural_bank_of_china/top_Bar.dart';
  import 'package:flutter/material.dart';
  import 'package:flutter/services.dart';
  import 'package:flutter_screenutil/flutter_screenutil.dart';

  class NoBouncingScrollBehavior extends ScrollBehavior {
    @override
    Widget buildViewportChrome(
      BuildContext context,
      Widget child,
      AxisDirection axisDirection,
    ) {
      return child;
    }

    @override
    ScrollPhysics getScrollPhysics(BuildContext context) {
      return const ClampingScrollPhysics(); // 吸附滚动（安卓风格）
    }
  }

  void main() {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, // 状态栏背景透明
        statusBarBrightness: Brightness.light, // 关键修改：状态栏文字白色
        statusBarIconBrightness: Brightness.light, // 状态栏图标白色
        systemNavigationBarColor: Colors.transparent, // 导航栏透明
        systemNavigationBarIconBrightness: Brightness.dark, // 导航栏图标亮色
      ),
    );
    runApp(const App());
  }

  class App extends StatelessWidget {
    const App({super.key});

    @override
    Widget build(BuildContext context) {
      return ScreenUtilInit(
        designSize: const Size(750, 1334),
        minTextAdapt: true,
        splitScreenMode: true,
        // Use builder only if you need to use library outside ScreenUtilInit context
        builder: (_, child) {
          return ScrollConfiguration(
            behavior: NoBouncingScrollBehavior(),
            child: MaterialApp(
              title: "中国农业银行",
              debugShowCheckedModeBanner: false,
              home: home(),
              theme: ThemeData(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
              ),
            ),
          );

          /*  */
        },
      );
    }
  }

  class home extends StatefulWidget {
    int _currentIndex = 0;

    @override
    State<home> createState() => _homeState();
  }

  class _homeState extends State<home> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: homePageWidget(),
        bottomNavigationBar: MediaQuery.removePadding(
          context: context,
          removeBottom: true,
          child: buttonBarWidget(
            currentIndex: widget._currentIndex,
            onTap: (currentIndex) {
              setState(() {
                widget._currentIndex = currentIndex;
              });
            },
          ),
        ),
      );
    }
  }
