import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class TextCarouselSlider extends StatelessWidget {
  final List<String> messages;
  final double height;
  final Duration interval;
  final TextStyle textStyle;

  const TextCarouselSlider({
    Key? key,
    required this.messages,
    this.height = 30,
    this.interval = const Duration(seconds: 2),
    this.textStyle = const TextStyle(fontSize: 16),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height, // 外部限制高度
      child: CarouselSlider(
        options: CarouselOptions(
          height: height, // 必须显式传入高度！否则 PageView 会报错
          scrollDirection: Axis.vertical,
          autoPlay: true,
          autoPlayInterval: interval,
          viewportFraction: 1.0,
          enlargeCenterPage: false,
          disableCenter: true,
        ),
        items:
            messages.map((text) {
              return Center(child: Text(text, style: textStyle));
            }).toList(),
      ),
    );
  }
}
