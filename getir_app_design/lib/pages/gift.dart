import 'package:flutter/material.dart';

class Gift extends StatefulWidget {
  const Gift({Key? key}) : super(key: key);

  @override
  State<Gift> createState() => _GiftState();
}

class _GiftState extends State<Gift> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,title:const Text("getir",style: TextStyle(fontFamily: "Balo",color: Colors.yellow,fontSize: 30),),backgroundColor: Colors.deepPurple,),
      body: Center(
        child: Text("Gift Screen"),
      ),
    );
  }
}
