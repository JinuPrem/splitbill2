import 'package:flutter/material.dart';
import 'package:splitbill2/split.dart';
class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(child:Scaffold(
        body: Column(
          children: [
            Container(
              height: 130,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50),
                  bottomLeft: Radius.circular(50),
                ),
              ),
              child: Row(
                children: [
                  IconButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                  }, icon: Icon(Icons.arrow_back,color: Colors.white,size: 40,)),
                  SizedBox(
                    width: 60,
                  ),
                  Text('My Activity',style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),)
                ],
              ),),

            Text('You Are Owed',style: TextStyle(fontSize: 20),),
            Text('\$40',style: TextStyle(fontSize: 40,color: Colors.blueGrey),),

          ],
        ),
      ), )
    );
  }
}
