import 'package:flutter/material.dart';
import 'package:getir_app_design/pages/gift.dart';
import 'package:getir_app_design/pages/profile.dart';
import 'package:getir_app_design/pages/search.dart';
import './entity.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Future<List<Categories>> getFood() async{
    var foodList =<Categories>[];
    var f1=Categories(titleId: 1, titleName: "Yeni Ürünler", pictureName: "yeniurunler.PNG");
    var f2=Categories(titleId: 2, titleName: "İndirimler", pictureName: "indirimler.PNG");
    var f3=Categories(titleId: 3, titleName: "Bana Özel", pictureName: "banaozel.PNG");
    var f4=Categories(titleId: 4, titleName: "Su & İçecek", pictureName: "suicecek.PNG");
    var f5=Categories(titleId: 5, titleName: "Meyve & Sebze", pictureName: "meyvesebze.PNG");
    var f6=Categories(titleId: 6, titleName: "Fırından", pictureName: "firindan.PNG");
    var f7=Categories(titleId: 7, titleName: "Temel Gıda", pictureName: "temelgida.PNG");
    var f8=Categories(titleId: 8, titleName: "Atıştırmalık", pictureName: "atistirmalik.PNG");
    var f9=Categories(titleId: 9, titleName: "Dondurma", pictureName: "dondurma.PNG");
    var f10=Categories(titleId: 10, titleName: "Süt Ürünleri", pictureName: "suturunleri.PNG");
    var f11=Categories(titleId: 11, titleName: "Kahvaltılık", pictureName: "kahvaltilik.PNG");
    var f12=Categories(titleId: 12, titleName: "Yiyecek", pictureName: "yiyecek.PNG");
    var f13=Categories(titleId: 13, titleName: "Fit & Form", pictureName: "fitform.PNG");
    var f14=Categories(titleId: 14, titleName: "Kişisel Bakım", pictureName: "kisiselbakim.PNG");
    var f15=Categories(titleId: 15, titleName: "Ev Bakım", pictureName: "evbakim.PNG");
    var f16=Categories(titleId: 16, titleName: "Ev & Yaşam", pictureName: "evyasam.PNG");
    var f17=Categories(titleId: 17, titleName: "Teknoloji", pictureName: "teknoloji.PNG");
    var f18=Categories(titleId: 18, titleName: "Evcil Hayvan", pictureName: "evcilhayvan.PNG");
    var f19=Categories(titleId: 19, titleName: "Bebek", pictureName: "bebek.PNG");
    var f20=Categories(titleId: 20, titleName: "Cinsel Sağlık", pictureName: "cinselsaglik.PNG");

    foodList.add(f1);foodList.add(f2);foodList.add(f3);foodList.add(f4);foodList.add(f5);foodList.add(f6);
    foodList.add(f7);foodList.add(f8);foodList.add(f9);foodList.add(f10);foodList.add(f11);foodList.add(f12);
    foodList.add(f13);foodList.add(f14);foodList.add(f15);foodList.add(f16);foodList.add(f17);foodList.add(f18);
    foodList.add(f19);foodList.add(f20);
    return foodList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,title:const Text("getir",style: TextStyle(fontFamily: "Balo",color: Colors.yellow,fontSize: 30),),backgroundColor: Colors.deepPurple,),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
                Row(
                  children: [
                    Expanded(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset("images/ev.PNG",height: 30,width: 30),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text("|",style: TextStyle(color: Colors.grey),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text("Ev",style: TextStyle(color: Colors.black),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text("Osmanlı Sokak No: 4/2 ",style: TextStyle(color: Colors.grey),),
                            ),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios_outlined,color: Colors.deepPurple,size: 16,),
                          ],
                        ),
                      ),
                    ),
              ),
                    Container(
                      height: 50,
                      width: 120,
                      color: Colors.yellow,
                      child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Text("TVS",style: TextStyle(color: Colors.deepPurple,fontSize: 12,fontWeight: FontWeight.bold),),
                          Text("9dk",style: TextStyle(color: Colors.deepPurple,fontSize: 20,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                  ],
                ),
              Container(
                height: 200,
                child: Image.asset("images/getirindirim.PNG",),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 300,
                  child: FutureBuilder<List<Categories>>(
                    future: getFood(),
                    builder: (context,snapshot){
                      if(snapshot.hasData){
                        var foodList=snapshot.data;
                        return GridView.builder(
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemCount: foodList!.length,
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,childAspectRatio: 1/1),
                          itemBuilder: (context,index){
                            var food = foodList[index];
                            return Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Card(
                                  elevation: 5,
                                  child: Image.asset("images/${food.pictureName}", width: 75,height: 75,),
                                ),
                                Text(food.titleName,style: const TextStyle(fontSize: 12,),),
                              ],
                            );
                          },
                        );
                      }else{
                        return const Center();
                      }
                    },

                  ),
                ),
              ),
            ],
          ),
        ),

      ),
    );
  }
}
