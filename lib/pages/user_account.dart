import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagram_ui/theme/theme_provider.dart';
import 'package:instagram_ui/widgets/bubble_stories.dart';
import 'package:provider/provider.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.background,
            elevation: 0,
            title:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('niyuhire_kd',style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                ),),
                Row(
                  children: [
                    Icon(Icons.add_box_outlined,color: Theme.of(context).colorScheme.primary,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Transform.rotate(angle: -1,
                      child: Icon(Icons.send_rounded,color: Theme.of(context).colorScheme.primary,)),
                    ),
                    Icon(Icons.menu,color: Theme.of(context).colorScheme.primary,)
                  ],
                )
      
              ],
            )
        ),
        body:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      shape: BoxShape.circle
                    ),
                  ),
                  Column(
                    children: [
                      Text('0',style: TextStyle(color: Theme.of(context).colorScheme.primary,)),
                      Text('Posts',style: TextStyle(color: Theme.of(context).colorScheme.primary,),)
                    ],
                  ),
                  Column(
                    children: [
                      Text('257',style: TextStyle(color: Theme.of(context).colorScheme.primary,)),
                      Text('Followers',style: TextStyle(color: Theme.of(context).colorScheme.primary,),)
                    ],
                  ),
                  Column(
                    children: [
                      Text('70',style: TextStyle(color: Theme.of(context).colorScheme.primary,)),
                      Text('Following',style: TextStyle(color: Theme.of(context).colorScheme.primary,))
                    ],
                  ),
                ],
              ),
            ),
             Padding(
               padding: const EdgeInsets.only(left: 16),
               child: Row(
                 children: [
                   const Icon(Icons.edit),
                   Text('Add bio',style: TextStyle(color: Theme.of(context).colorScheme.primary,),)
                 ],
               ),
             ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text('Niyuhire Kelly Derlin',style: TextStyle(color: Theme.of(context).colorScheme.primary,),),
            ),
           const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.secondary,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(child: Text('Edit profile',style: TextStyle(color: Theme.of(context).colorScheme.primary,),))
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.secondary,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(child: Text('Share profile',style: TextStyle(color: Theme.of(context).colorScheme.primary,),))
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.secondary,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(child: Text('send',style: TextStyle(color: Theme.of(context).colorScheme.primary,),))
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            const Row(
              children: [
                BubbleStories(text: 's1',),
                BubbleStories(text: 's2',),
                BubbleStories(text: 's3',),
                BubbleStories(text: 's4',),
                BubbleStories(text: 's5',),
              ],
            ),
            //TabBar
            const TabBar(
                tabs: [
                  Tab(
                    icon: Icon(Icons.grid_3x3),
                  ),
                  Tab(
                    icon: Icon(Icons.video_call),
                  ),
                  Tab(
                    icon: Icon(Icons.shop),
                  ),
                  Tab(
                    icon: Icon(Icons.person),
                  ),
                ]
            )
          ],
        )
      ),
    );
  }
}
// InkWell(
// onTap: (){
// Provider.of<ThemeProvider>(context,listen: false).toggleTheme();
// },
// child:
// const Icon(Icons.sunny))