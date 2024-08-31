import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagram_ui/util/bubble_stories.dart';
import 'package:instagram_ui/util/user_posts.dart';

class UserHome extends StatelessWidget {
  final List people = ['KD','Pawel','Jo','Mum','Dad','Kate','Owen'];

   UserHome({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        elevation: 0,
        title:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Instagram',style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
            ),),
             Row(
              children: [
                Icon(Icons.add,color: Theme.of(context).colorScheme.primary,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.favorite,color: Theme.of(context).colorScheme.primary,),
                ),
                Icon(Icons.share,color: Theme.of(context).colorScheme.primary,)
              ],
            )

          ],
        )
      ),
      body:  Column(
        children: [
           SizedBox(
             height: 130,
             child: ListView.builder(
                  itemCount: people.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index){
                return BubbleStories(text: people[index]);
              }),
           ),
          Expanded(
            child: ListView.builder(
              itemCount: people.length,
                itemBuilder: (context,index){
              return UserPosts(name: people[index]);
            }),
          )


        ],
      ),
    );
  }
}
