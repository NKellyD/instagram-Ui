import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_ui/util/bubble_stories.dart';

class UserHome extends StatelessWidget {
  final List people = ['KD','Pawel','Jo','Mum','Dad','Kate','Owen'];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Instagram',style: TextStyle(
              color: Colors.black,
            ),),
            Row(
              children: [
                Icon(Icons.add),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.favorite),
                ),
                Icon(Icons.share)
              ],
            )

          ],
        )
      ),
      body:  Column(
        children: [
           ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index){
              return BubbleStories(text: people[index]);
            })


        ],
      ),
    );
  }
}
