import 'package:flutter/material.dart';
import 'package:getir_app_design/mainpage.dart';
import 'package:getir_app_design/pages/gift.dart';
import 'package:getir_app_design/pages/profile.dart';
import 'package:getir_app_design/pages/search.dart';

class BottomStyle extends StatefulWidget {
  const BottomStyle({Key? key}) : super(key: key);

  @override
  State<BottomStyle> createState() => _BottomStyleState();
}

class _BottomStyleState extends State<BottomStyle> {
  int currentTab  = 0;
  final List<Widget> screens = [MainPage(),Search(),Profile(),Gift()];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = MainPage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(bucket: bucket, child: currentScreen),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple,
        child: Icon(Icons.menu,color: Colors.yellow,),
        onPressed: (){},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: BottomAppBar(
        elevation: 10,
        shape: CircularNotchedRectangle(),
        notchMargin: 0,
        child: Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MaterialButton(minWidth: 40,onPressed: (){
                    setState(() {
                      currentScreen=MainPage();
                      currentTab=0;
                    });
                  },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:16.0),
                          child: Icon(
                              Icons.home,
                              size: 32,
                              color: currentTab==0 ? Colors.purple : Colors.grey,
                          ),
                        ),
                      ],

                    ),
                  ),
                  MaterialButton(minWidth: 40,onPressed: (){
                    setState(() {
                      currentScreen=Search();
                      currentTab=1;
                    });
                  },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left :32.0),
                          child: Icon(
                            Icons.search,
                            size: 32,
                            color: currentTab==1 ? Colors.purple : Colors.grey,
                          ),
                        ),
                      ],

                    ),
                  ),


                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(minWidth: 40,onPressed: (){
                    setState(() {
                      currentScreen=Profile();
                      currentTab=2;
                    });
                  },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right:32.0),
                          child: Icon(
                            Icons.person,
                            size: 32,
                            color: currentTab==2 ? Colors.purple : Colors.grey,
                          ),
                        ),
                      ],

                    ),
                  ),
                  MaterialButton(minWidth: 40,onPressed: (){
                    setState(() {
                      currentScreen=Gift();
                      currentTab=3;
                    });
                  },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right :16.0),
                          child: Icon(
                            Icons.card_giftcard,
                            size: 32,
                            color: currentTab==3 ? Colors.purple : Colors.grey,
                          ),
                        ),
                      ],

                    ),
                  ),


                ],
              ),
            ],
          ),
        ),

      ),
    );
  }
}
