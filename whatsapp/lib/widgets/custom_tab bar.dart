import 'package:flutter/material.dart';
import 'package:whatsapp/calls.dart';
import 'package:whatsapp/updates.dart';
import '../chat.dart';

class Customtabbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 248, 248),
        appBar: AppBar(
          elevation: 2,
          toolbarHeight: 80,
          title: const Text(
            "Whatsapp",
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  print("on camera mode!!");
                },
                icon: const Icon(
                  Icons.camera_alt_outlined,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {
                  print("search clicked!!");
                },
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {
                  print("more info clicked!!");
                },
                icon: const Icon(
                  Icons.more_vert,
                  color: Colors.white,
                )),
          ],
          backgroundColor: const Color.fromARGB(255, 12, 82, 49),
          bottom: const TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              dividerColor: Colors.transparent,
              splashBorderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              indicator: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 3,
                    color: Color.fromARGB(255, 252, 252, 252),
                  ),
                ),
              ),
              labelStyle: TextStyle(
                  color: Color.fromARGB(255, 244, 252, 244),
                  fontSize: 20.0,
                  fontWeight:
                      FontWeight.bold), // Change the font size for selected tab
              unselectedLabelStyle: TextStyle(
                  color: Color.fromARGB(255, 108, 112, 108), fontSize: 16.0),
              tabs: [
                Tab(
                  text: "Chats",
                ),
                Tab(
                  text: "Updates",
                ),
                Tab(
                  text: "Calls",
                ),
              ]),
        ),

        body: TabBarView(children: [
          Chat(),
          Updates(),
          Call(),
        ]),
      ),
    );
  }
}
