import 'package:flutter/material.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Account'),
            InkWell(
              onTap: (){},
                child:
                const Icon(Icons.sunny))
          ],
        ),
      ),
      body: Center(child: Text('account'),),
    );
  }
}
