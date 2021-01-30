

import 'package:flutter/material.dart';
import 'package:youtubeclone/watchpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "YouTube",
      home: YouTube(),
      theme: ThemeData(
        primaryColor: Colors.black
      ),
      routes: {
        "/watch":(context)=>WatchPage()
      },
    );
  }
}

class YouTube extends StatefulWidget {
  @override
  _YouTubeState createState() => _YouTubeState();
}

class _YouTubeState extends State<YouTube> {
  int id=0;
  @override
  Widget build(BuildContext context) {


      final tabs=<Widget>[
          HomePage(),
          Center(child: Text("Explore"),),
          Center(child: Text("Add"),),
          Center(child: Text("Subscription"),),
          Center(child: Text("Library"),),
      ];
  final bottomNavigationBarItems=<BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home),title: Text("Home")),
        BottomNavigationBarItem(icon: Icon(Icons.explore),title: Text("Explore")),
        BottomNavigationBarItem(icon: Icon(Icons.add,size: 50,),title: Text("")),
        BottomNavigationBarItem(icon: Icon(Icons.subscriptions),title: Text("Subscriptions")),
        BottomNavigationBarItem(icon: Icon(Icons.video_library),title: Text("Library")),
    ];

    final bottomNavigationBar=BottomNavigationBar(
        items: bottomNavigationBarItems,
        currentIndex: id,
        type: BottomNavigationBarType.fixed,
        onTap: (int value){
          setState(() {
            id=value;
          });
        },
    );
  
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("YouTube",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
          actions: [
            IconButton(icon: Icon(Icons.cast,color: Colors.black,), onPressed: (){}),
            IconButton(icon: Icon(Icons.notifications,color: Colors.black,), onPressed: (){}),
            IconButton(icon: Icon(Icons.search,color: Colors.black,), onPressed: (){}),
            CircleAvatar(
              child:Text("A"),
              backgroundColor: Colors.red,
            )
            
          ],
        ),
        body: tabs[id],
        bottomNavigationBar: bottomNavigationBar,
      ),
    );
  }
}

Widget HomePage(){
  return ListView.builder(
    itemCount: 100,
    itemBuilder: (context,index){
      return Tile(context);
    },
  );
}
Widget Tile(context){

  return GestureDetector(
    onTap: (){
      Navigator.of(context).pushNamed("/watch");
    },
      child: Container(
      height: 300.0,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: EdgeInsets.only(left: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network("https://miro.medium.com/max/2560/0*WjvEqERBi6Rr03Uw.jpeg"),
              Row(
                children: [
                  CircleAvatar(
                    child: Text("Y"),
                    backgroundColor: Colors.green,

                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Youtube title",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                      Text("Youtuber name and details",style: TextStyle(fontSize: 10),),
                    ],
                  )
                ],
              ),
            Divider()
          ],
        ),
      ),
    ),
  );
}