import 'package:flutter/material.dart';

class NewScreen extends StatelessWidget {
  String myname;
NewScreen({required this.myname});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      backgroundColor: Color.fromARGB(255, 190, 219, 221),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                   Text('HI $myname',style: 
            TextStyle(
              color: Colors.deepPurple,
              fontSize: 40,
              fontWeight: FontWeight.bold,
              
            ),),
              ],
            ),
           TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5)),
            ),
            onPressed: ()
            {
              Navigator.pop(context);
            },
             child: Text('PREVIOUS PAGE',style: TextStyle(
              fontSize: 30,
              color: Colors.white,
             ),),
           ),
          ],
        ),

      ),
    );
  }
}