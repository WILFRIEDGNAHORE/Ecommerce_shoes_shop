import 'package:e_bookapp/common/colors_extension.dart';
import 'package:flutter/material.dart';

class TabarView extends StatefulWidget {
  const TabarView({super.key});

  @override
  State<TabarView> createState() => _TabarViewState();
}

class _TabarViewState extends State<TabarView> {
  List<String> items = [
    "35",
    "40",
    "42",
    "43",
    "38",
  ];

  int current = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          margin: EdgeInsets.all(5),
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: 60,
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: items.length,
                    itemBuilder: (ctx, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            current = index;
                          });
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          margin: EdgeInsets.all(5),
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: current == index
                                  ? Colors.black
                                  : TColor.placeholder.withOpacity(0.2)),
                          child: Center(
                            child: Text(
                              items[index],
                              style: TextStyle(
                                  color: current == index
                                      ? Colors.white
                                      : Colors.black),
                            ),
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
