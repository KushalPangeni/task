// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class TOO extends StatefulWidget {
  final String tablename;
  final List<String> food;
  final List<int> noOforder;
  const TOO(
      {super.key,
      required this.tablename,
      required this.food,
      required this.noOforder});

  @override
  State<TOO> createState() => _TOOState();
}

class _TOOState extends State<TOO> {
  late String tablenames;
  late List<String> foods;
  late List<int> noOforders;
  @override
  void initState() {
    tablenames = widget.tablename;
    foods = widget.food;
    noOforders = widget.noOforder;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //table name
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 5, 0, 5.0),
          child: Text(
            tablenames,
            style: TextStyle(fontSize: 13),
          ),
        ),
        // 3 Rows inside container
        Container(
          height: 135,
          width: 112,
          decoration: BoxDecoration(
            color: Colors.teal[50],
            borderRadius: BorderRadius.circular(6),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
            child: Column(
              children: [
                //Table time
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: Text(
                        "Table",
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w500),
                      )),
                      Text(
                        "1:45 PM",
                        style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.w500,
                            fontSize: 10),
                      ),
                    ],
                  ),
                ),
                //List of item
                Expanded(
                  child: ListView.builder(
                    itemCount: foods.length,
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(0, 4, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              foods[index],
                              style: TextStyle(fontSize: 10),
                            ),
                            Text(
                              noOforders[index].toString(),
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                      );
                    }),
                  ),
                ),
                //divider
                Divider(),
                //dishes and KOT
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Dishes: 13",
                      style: TextStyle(fontSize: 10),
                    ),
                    Text(
                      "KOT : 03",
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
