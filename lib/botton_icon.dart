import 'package:flutter/material.dart';

class bottonIcon extends StatefulWidget {
  final String name;
  final String iconUrl;
  final Widget? page;
  const bottonIcon({
    super.key,
    required this.iconUrl,
    required this.name,
    this.page,
  });

  @override
  State<bottonIcon> createState() => _bottonIconState();
}

class _bottonIconState extends State<bottonIcon> {
  Color color = Color.fromRGBO(255, 255, 255, 1);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        color: color,
        child: Column(
          children: [
            Image.asset(widget.iconUrl, width: 34, height: 34),
            SizedBox(height: 2),
            Text(
              widget.name,
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
      onTap: () {
        setState(() {
          color = color = Color.fromRGBO(229, 229, 229, 1);
        });

        Future.delayed(Duration(milliseconds: 80), () {
          setState(() {
            color = Color.fromRGBO(255, 255, 255, 1);
          });
        });
      },
      onTapDown: (details) {
        setState(() {
          color = Color.fromRGBO(229, 229, 229, 1);
        });

        Future.delayed(Duration(milliseconds: 10), () {
          setState(() {
            color = Color.fromRGBO(255, 255, 255, 1);
          });
          if (widget.page != null) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => widget.page!),
            );
          }
        });
      },
      onTapUp: (details) {
        setState(() {
          color = Color.fromRGBO(255, 255, 255, 1);
        });
      },
      onPanEnd: (details) {
        setState(() {
          color = Color.fromRGBO(255, 255, 255, 1);
        });
      },
      onPanCancel: () {
        setState(() {
          color = Color.fromRGBO(255, 255, 255, 1);
        });
      },
    );
  }
}
