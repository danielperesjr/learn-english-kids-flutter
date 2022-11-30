import 'package:flutter/material.dart';

class Numbers extends StatefulWidget {
  const Numbers({Key? key}) : super(key: key);

  @override
  State<Numbers> createState() => _NumbersState();
}

class _NumbersState extends State<Numbers> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: MediaQuery.of(context).size.aspectRatio * 2,
      children: [
        GestureDetector(
          onTap: () {},
          child: Image.asset("assets/images/1.png"),
        ),
        GestureDetector(
          onTap: () {},
          child: Image.asset("assets/images/2.png"),
        ),
        GestureDetector(
          onTap: () {},
          child: Image.asset("assets/images/3.png"),
        ),
        GestureDetector(
          onTap: () {},
          child: Image.asset("assets/images/4.png"),
        ),
        GestureDetector(
          onTap: () {},
          child: Image.asset("assets/images/5.png"),
        ),
        GestureDetector(
          onTap: () {},
          child: Image.asset("assets/images/6.png"),
        ),
      ],
    );
  }
}
