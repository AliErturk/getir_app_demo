import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,title:const Text("getir",style: TextStyle(fontFamily: "Balo",color: Colors.yellow,fontSize: 30),),backgroundColor: Colors.deepPurple,),
      body: Center(
        child: Text("Search Screen"),
      ),
    );
  }
}
