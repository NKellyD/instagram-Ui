import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
  final String name;
  const UserPosts({super.key,  required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       Padding(
         padding: const EdgeInsets.all(16.0),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Row(
                children: [
                  // profile post
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 10,),
                  // name
                  Text(name,style: TextStyle(fontWeight: FontWeight.bold,color: Theme.of(context).colorScheme.primary,),),
                ],
              ),
              Icon(Icons.menu,color: Theme.of(context).colorScheme.primary,)
           ],
         ),
       ),
        // post
        Container(
          height: 300,
          color: Theme.of(context).colorScheme.secondary,
        ),
        // button reaction to the post
         Padding(
          padding: const EdgeInsets.all(14.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite,color: Theme.of(context).colorScheme.primary,),
                   Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.chat_bubble_outline,color: Theme.of(context).colorScheme.primary,),
                  ),
                  Icon(Icons.share,color: Theme.of(context).colorScheme.primary,),
                ],
              ),
              Icon(Icons.bookmark,color: Theme.of(context).colorScheme.primary,)
            ],
          ),
        ),
        // num like and comment
         Padding(
          padding: const EdgeInsets.only(left: 14),
          child: Row(
            children: [
              Text('Aime par ',style: TextStyle(color: Theme.of(context).colorScheme.primary,),),
              Text(name,style: TextStyle(fontWeight: FontWeight.bold,color: Theme.of(context).colorScheme.primary,),),
              Text(' et ',style: TextStyle(color: Theme.of(context).colorScheme.primary,),),
              Text('1000 ',style: TextStyle(fontWeight: FontWeight.bold,color: Theme.of(context).colorScheme.primary,)),
              Text('autres personnes',style: TextStyle(color: Theme.of(context).colorScheme.primary,),)
            ],
          ),
        ),
        //caption
        Padding(
          padding: const EdgeInsets.only(left:16,top: 2),
          child: RichText(text:
           TextSpan(
            style: TextStyle(color: Theme.of(context).colorScheme.primary,),
            children: [
              TextSpan(
                text: name,
                style: TextStyle(fontWeight: FontWeight.bold,color: Theme.of(context).colorScheme.primary,)

              ),
              TextSpan(
                text: ' Honered to rceive this award from @championsleague for being the all-time top'
                    'scorer of the competiton. Grateful for all the support along the way! Thank you',
                style: TextStyle(color: Theme.of(context).colorScheme.primary,)
              )
            ]
          )),
        )
      ],
    );
  }
}
