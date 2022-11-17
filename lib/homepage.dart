import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:ui' as ui;

import 'package:insta_ui_01/news_feedpage.dart';

class Homepage extends StatefulWidget {
  Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int pageindex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: getbody(),
        bottomNavigationBar: bottombar(),
        appBar: getAppBar(),
        // appBar: AppBar(
        //   backgroundColor: Colors.black,
        //   title: Text(
        //     "Instagram",
        //     style: TextStyle(
        //         fontFamily: 'Billabong',
        //         fontSize: 32,
        //         backgroundColor: Colors.white),
        //   ),
        //   centerTitle: true,
        //   // leading: ,
        // ),
      ),
    );
  }

  getbody() {
    List <Widget>pages  = [
      homepage(),
      // Center(
      //     child: Text("HomePage" , style: TextStyle( color: Colors.white ,fontSize:20 , fontWeight: FontWeight.w600), ),
      // ),
      // Center(
      //   child: Text("Search" , style: TextStyle( color: Colors.white ,fontSize:20 , fontWeight: FontWeight.w600),),
      // ),
      // Center(
      //   child: Text("Upload" , style: TextStyle( color: Colors.white ,fontSize:20 , fontWeight: FontWeight.w600),),
      // ),
      // Center(
      //   child: Text("Activity" , style: TextStyle( color: Colors.white ,fontSize:20 , fontWeight: FontWeight.w600),),
      // ),
      // Center(
      //   child: Text("Account" , style: TextStyle( color: Colors.white ,fontSize:20 , fontWeight: FontWeight.w600),),
      // ),

    ];
    return IndexedStack(
      index: pageindex,
      children: pages,
    );
  }
  Widget bottombar() {
    List bottemitems = [
      pageindex == 0
          ? "assets/images/home_active_icon.svg"
          : "assets/images/home_icon.svg",
      pageindex == 1
          ? "assets/images/search_active_icon.svg"
          : "assets/images/search_icon.svg",
      pageindex == 2
          ? "assets/images/Upload_active_icon.svg"
          : "assets/images/Upload_icon.svg",
      pageindex == 3
          ? "assets/images/love_active_icon.svg"
          : "assets/images/love_icon.svg",
      pageindex == 4
          ? "assets/images/account_active_icon.svg"
          : "assets/images/account_icon.svg",
    ];
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(color: Colors.black),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
              bottemitems.length,
              (index) => InkWell(
                    onTap: () {
                      selectedTab(index);
                    },
                    child: SvgPicture.asset(
                      bottemitems[index],
                      width: 30,
                    ),
                  )),
        ),
      ),
    );
  }

  selectedTab(index) {
    setState(() {
      pageindex = index;
    });
  }

  getAppBar() {
    if (pageindex == 0) {
      return AppBar(
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(
              "assets/images/camera_icon.svg",
              width: 30,
            ),
            Text(
              "Instagram",
              style: TextStyle(fontFamily: 'Billabong', fontSize: 35),
            ),
            SvgPicture.asset(
              "assets/images/message_icon.svg",
              width: 30,
            )
          ],
        ),
      );
    }
    else if( pageindex == 1)
      {
        return AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
        );
      }
    else if (pageindex == 2)
      {
        return AppBar(
          backgroundColor: Colors.black,
          title: Text("Upload"),
          centerTitle: true,
        );
      }
    else if (pageindex == 3)
    {
      return AppBar(
        backgroundColor: Colors.black,
        title: Text("Activity"),
        centerTitle: true,
      );
    }
    else
    {
      return AppBar(
        backgroundColor: Colors.black,
        title: Text("Account"),
        centerTitle: true,
      );
    }
  }
}
