import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:insta_ui_01/colors.dart';

class StoryItem extends StatelessWidget {
  final String img;
  final String name;
  const StoryItem({
    Key? key,
    required this.img,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) { 
    return Padding(
        padding: const EdgeInsets.only(right: 20, bottom: 15),
        child: Column(
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: storyBorderColor),
               // borderRadius: BorderRadius.only(27),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    width: 75,
                    height: 75,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                              img,
                            ),
                            fit: BoxFit.cover))),
              ),
            ),
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

    );
  }
}