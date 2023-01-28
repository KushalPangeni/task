// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:task/views/tabs/kot.dart';
import 'package:task/views/tabs/order.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedindex = 0;
  // ignore: no_leading_underscores_for_local_identifiers
  void _navigateBottomNav(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Title and arrow
              Row(
                children: [
                  Text(
                    'The Grill',
                    style: TextStyle(color: Colors.teal),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.teal,
                      ))
                ],
              ),
              InkWell(
                onTap: (() {}),
                child: Row(
                  children: const [
                    Text(
                      "Help",
                      style: TextStyle(color: Colors.teal),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(5, 0, 10, 0),
                      child: Icon(
                        Icons.mode_comment_outlined,
                        size: 18,
                        color: Colors.teal,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),

        body: Column(
          children: const [
            TabBar(
              tabs: [
                Tab(
                  child: Text(
                    "Order",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                Tab(
                  child: Text(
                    "KOT",
                    style: TextStyle(color: Colors.red),
                  ),
                )
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Order(),
                  KOT(),
                ],
              ),
            )
          ],
        ),
        //BottomNavigattionBar
        bottomNavigationBar: BottomNavigationBar(
          onTap: _navigateBottomNav,
          currentIndex: selectedindex,
          selectedItemColor: Colors.red,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Colors.black),
            BottomNavigationBarItem(icon: Icon(Icons.copy), label: 'Orders'),
            BottomNavigationBarItem(icon: Icon(Icons.grid_3x3), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Activity',
                backgroundColor: Colors.teal),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'More')
          ],
        ),
        //floating action Button
        floatingActionButton: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(8)),
            child: const Icon(
              Icons.keyboard_arrow_up,
              color: Colors.white,
            )),
      ),
    );
  }
}
