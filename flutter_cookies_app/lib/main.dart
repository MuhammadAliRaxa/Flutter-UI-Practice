 import 'package:flutter/material.dart';
 import 'package:flutter_cookies_app/list_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Cookies App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    var media=MediaQuery.sizeOf(context);
    return Scaffold(
      body:Stack(
        fit: StackFit.expand,
        children: [
           Positioned(top: 0,child: Image.asset(width: media.width,height: media.height*0.7,fit: BoxFit.fitWidth,'assets/basket-chocolate-cookies-with-dog-face-front_662214-142816.jpg')),
           Positioned(
            top: media.height*0.578,
             child: Container(height: media.height,width: media.width,
             decoration: BoxDecoration(
              color: Colors.brown[900],
              borderRadius: BorderRadius.circular(70)
             ),

             ),
           ),
          Positioned(left: media.width*0.1,top: media.height*0.62,child:const Text("Get A",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 45,color:Colors.white60))),
          Positioned(top: media.height*0.63,left: media.width*0.45 ,child:Container(height: 50,width: 140,decoration: BoxDecoration(
            color: Colors.brown,
            borderRadius: BorderRadius.circular(50),
          ),)),
          Positioned(top: media.height*0.8,left: media.width*0.5 ,child:Container(height: 50,width: 130,decoration: BoxDecoration(
            color: Colors.brown,
            borderRadius: BorderRadius.circular(50),
          ),)),
          Positioned(top: media.height*0.72,left: media.width*0.1 ,child:Container(height: 50,width: 110,decoration: BoxDecoration(
            color: Colors.brown,
            borderRadius: BorderRadius.circular(50),
          ),)),
          Positioned(left: media.width*0.4,top: media.height*0.71,child: const Text('Craving',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 45,color:Colors.white60))),
          Positioned(top: media.height*0.79,left: media.width*0.1 ,child: const Text('Grab A',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 45,color:Colors.white60))),
          Positioned(top: media.height*0.87,left: media.width*0.1 ,child: const Text('Cookie!',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 45,color:Colors.white60))),
          Positioned(top: media.height*0.91,left: media.width*0.8,child: FloatingActionButton.large(backgroundColor: Colors.brown,onPressed: (){
            Navigator.of(context).push(PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation) => 
            FadeTransition(opacity: animation,child: const ListViewItem(),)
            ,));
          },child: const Icon(Icons.arrow_forward_ios,color: Colors.white,),))
        ],
      )
    );
  }
}
