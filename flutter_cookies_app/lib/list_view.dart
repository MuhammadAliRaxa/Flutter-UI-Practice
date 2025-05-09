import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_cookies_app/view_detalis.dart';

class ListViewItem extends StatefulWidget {
  const ListViewItem({super.key});

  @override
  State<ListViewItem> createState() => _ListViewItemState();
}

class _ListViewItemState extends State<ListViewItem> {
  @override
  Widget build(BuildContext context) {
    Random random=Random();
    var image=['assets/chocolate-chips-on-cookie-on-transparent-background-png.png','assets/cookie-isolated-on-transparent-background-free-png.png',
    'assets/cookie-png-images-are-download-crazypngm-7.png','assets/chocolate-chips-on-cookie-on-transparent-background-png.png','assets/cookie-isolated-on-transparent-background-free-png.png'];
    var tag=['Premium','Classic','Premium',"Classic","Premium",'Premium','Premium'];
    var list=["Chocolate \n chips","Oetmeel with \n resins","Chocolate\n latte","Classic \nChips","Classic \nChcolate","Delicious \nchips"];
    var media=MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        physics: const ScrollPhysics(parent: ClampingScrollPhysics()),
        children: [
          ListTile(leading: const CircleAvatar(backgroundImage:AssetImage('assets/Ali Raza.jpg',)),
          title: const Text("Muhammad",style: TextStyle(color: Colors.white),),
          subtitle: const Text('Ali Raza',style:TextStyle(color: Colors.white)),
          trailing: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
            ),
            child:const Center(
              child: Column(
                children: [Text('0',style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold
                ),
                ),
                Text('Products',style: TextStyle(
                  fontSize: 8,
                  fontWeight: FontWeight.bold
                ),
                )]
              ),
            ),
          ),
          ),
          SizedBox(
            width: media.width,
            height: media.height*0.15,
            child: Stack(
              children: [
                const Positioned(
                  top: 20,
                  left: 13,
                  child: Text('Cookies', style:TextStyle(
                    fontSize: 35
                    ,color: Colors.white,
                    fontWeight: FontWeight.bold
                  )),
                ),
                Positioned(
                  left: 15,
                top: 70,
                  child: Text('Premium', style:TextStyle(
                    fontSize: 26
                    ,color: Colors.orange[300],
                    fontWeight: FontWeight.bold
                  )),
                ),
                Positioned(
                  left: 300,
                  top:70,
                  child: Text('See more', style:TextStyle(
                    fontSize: 15
                    ,color: Colors.orange[200],
                    fontWeight: FontWeight.bold
                  )),
                )
              ],
            )
          ),
          SizedBox(
            height: 250,
            width: media.width,
            child: ListView.builder(
              physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => 
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation) => RotationTransition(turns: animation,child: ViewDetails(image: image[index], name: list[index]),),));
              },
              child: SizedBox(
                width: 170,
                height: 300,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Stack(
                              children: [
                                Positioned(
                                  bottom: 0,
                                  top: 90,
                                  child: Container(
                                    width: 130,
                                    height: 200,
                                    decoration: BoxDecoration(
                  color: Colors.white54,
                  borderRadius: BorderRadius.circular(20)
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top:0,left: 0,child: 
                                Image.asset(fit: BoxFit.cover,width: 140,image[index]),
                                ),
                                 Positioned(
                                    top: 140,
                                    left: 10,
                                    child: Text(
                                    list[index],style:const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  ),
                                  Positioned(
                                    top: 185,
                                    left: 15,
                                    child: Text(tag[index],style: TextStyle(
                                    fontSize: 12,fontWeight: FontWeight.bold,color: Colors.orange[300]
                                  ),)),
                                  Positioned(
                                    top: 200,
                                    left: 15,
                                    child: Text('RS ${random.nextInt(200)}',style:const TextStyle(
                                    fontSize: 12,fontWeight: FontWeight.bold,color: Colors.white
                                  ),)),
                              ],
                  ),
                ),
              ),
            ),),
          ),
          Text('Offers',style: TextStyle(fontSize: 40,color:Colors.amber[300],fontWeight: FontWeight.bold)),
          for(int i=0;i<=image.length-1;i++)
            SizedBox(
              height: 100,
              width: media.width,
              child: Padding(padding: const EdgeInsets.all(8),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white38,
                  borderRadius: BorderRadius.circular(12)
                ),
                child: ListTile(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewDetails(image: image[i], name: list[i]),));
                  },
                  contentPadding: const EdgeInsets.all(10),
                  leading: Hero(tag:list[i],child: Image.asset(fit: BoxFit.cover,image[i],width: 70,)),
                  title: Text(list[i]),
                  trailing: const Icon(Icons.arrow_circle_right_rounded,color: Colors.white,size: 30,),
                ),
              ),),
            )
          
          
        ]
      )
      );
  }
}