
//import 'dart:html';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:insta_ui_01/post_json.dart';
import 'package:insta_ui_01/story_json.dart';
import 'package:insta_ui_01/colors.dart';
import 'package:insta_ui_01/widget/story_item.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return getbody();
  }

  Widget getbody() {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: <Widget>[
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.only(right: 20, left: 15, bottom: 10),
                  child: Column(
                    children: <Widget>[
                      Container(
                          width: 65,
                          height: 65,
                          child: Stack(
                            children: <Widget>[
                              Container(
                                width: 65,
                                height: 65,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: NetworkImage(profile),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              )
                            ],
                          )),
                      SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                        width: 70,
                        child: Text(
                          name,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                    children: List.generate(stories.length, (index) {
                  return StoryItem(
                    img: stories[index]['img'],
                    name: stories[index]['name'],
                  );
                })),
              ],
            ),
          ),
          Divider(
            color: white.withOpacity(0.2),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: NetworkImage(posts[0]['profileImg']),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          posts[0]['name'],
                          style: TextStyle(
                              color: white,
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "                                                             ...",
                          style: TextStyle(color: white, fontSize: 25),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                height: 400,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(posts[0]["postImg"]),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                  top: 3,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          "assets/images/loved_icon.svg",
                          width: 27,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        SvgPicture.asset(
                          "assets/images/comment_icon.svg",
                          width: 27,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        SvgPicture.asset(
                          "assets/images/message_icon.svg",
                          width: 27,
                        ),
                      ],
                    ),
                    SvgPicture.asset(
                      "assets/images/save_icon.svg",
                      width: 27,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: "Liked by",
                      style: TextStyle(
                        color: white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      )),
                  TextSpan(
                      text: " Isabella",
                      style: TextStyle(
                        color: white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      )),
                  TextSpan(
                      text: " and others",
                      style: TextStyle(
                        color: white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ))
                ])),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 15,
                  right: 15,
                ),
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: "Isabella",
                      style: TextStyle(
                        color: white,
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      )),
                  TextSpan(
                      text: " Good Morning",
                      style: TextStyle(
                        color: white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      )),
                ])),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 15,
                  right: 15,
                ),
                child: Text(
                  "View 10 Comments",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: white.withOpacity(
                        0.6,
                      )),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                  padding: EdgeInsets.only(
                    left: 15,
                    right: 15,
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(posts[0]['profileImg']),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Add a Comment...",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: white.withOpacity(
                              0.9,
                            )),
                      ),
                    ],
                  )),
            ],
          )
        ],
      ),
    );
  }
}


// child: Positioned(
//                                 bottom: 3,
//                                 right: 9,
//                                 child: Container(
//                                   width: 19,
//                                   height: 19,
//                                   decoration: BoxDecoration(
//                                       shape: BoxShape.circle, color: white),
//                                   child: Icon(
//                                     Icons.add_circle,
//                                     color: buttonFollowColor,
//                                     size: 19,
//                                   ),
//                                 ),
//                               ),