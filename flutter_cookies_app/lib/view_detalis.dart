import 'package:flutter/material.dart';

class ViewDetails extends StatefulWidget {
  const ViewDetails({super.key,required this.image,required this.name});
  final String image;
  final String name; 

  @override
  State<ViewDetails> createState() => _ViewDetailsState();
}

class _ViewDetailsState extends State<ViewDetails> {
  @override
  Widget build(BuildContext context) {
    int num=1;
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(color: Colors.white,Icons.arrow_back_ios_new_rounded,size: 40,),
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.black54,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(flex: 4,child: Hero(tag:widget.name,child: Image.asset(widget.image))),
            Expanded(flex: 2,child: Text('${widget.name}\nPREMIUM',style: const TextStyle(color:Colors.amberAccent,fontSize: 20),)),
            Expanded(flex: 2,child: Container(
              child: const Text(style: TextStyle(color: Colors.white54,fontSize: 15),'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged'),
            )),
            Expanded(flex:1,child: Center(
              child: Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    Expanded(flex:1,child: IconButton(onPressed: (){
                        setState(() {
                          num--;
                        });
                    }, icon: const Icon(Icons.text_decrease_sharp))),
                    Expanded(flex:5,child: Center(child: Text('$num'))),
                    Expanded(flex:2,child: IconButton(onPressed: (){
                      setState(() {
                        num++;
                      });
                    },icon: const Icon(Icons.text_increase_sharp),))
                  ],
                ),
              )
            )),
            Expanded(flex: 1,child: FloatingActionButton.extended(backgroundColor: Colors.amber,onPressed: (){}, label: const Text("Add to Cart")))

          ],
        ),
      ),
    );
  }
}