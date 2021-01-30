
import 'package:flutter/material.dart';
import 'package:youtubeclone/main.dart';

class WatchPage extends StatefulWidget {
  @override
  _WatchPageState createState() => _WatchPageState();
}

class _WatchPageState extends State<WatchPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:Column(
          children: [
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              child: Image.network("https://miro.medium.com/max/2560/0*WjvEqERBi6Rr03Uw.jpeg"),
            ),
            Divider(),
            Expanded(child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context,index){
                if(index==0){
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("YOUTUBE TITLE",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                      Text("view",style: TextStyle(fontSize: 10),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Icon(Icons.thumb_up_alt_outlined),
                              Text("166k",style: TextStyle(color: Colors.grey),)
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.thumb_down_alt_outlined),
                              Text("177",style: TextStyle(color: Colors.grey),)
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.share),
                              Text("Share",style: TextStyle(color: Colors.grey),)
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.download_sharp),
                              Text("Download",style: TextStyle(color: Colors.grey),)
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.save_alt_rounded),
                              Text("Save",style: TextStyle(color: Colors.grey),)
                            ],
                          ),  
                        ],
                      ),

                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            child: Text("C"),
                            backgroundColor: Colors.red,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                               Text("Channel Name",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                               Text("Subscriber",style: TextStyle(fontSize: 10),),
                            ],
                          ),
                          Text("SUBSCRIBE",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red,fontSize: 15),),
                        ],
                      )

                      
                      
                    ],
                  );
                }
                else{
                return Tile(context);

                }
              }
              ))
          ],
        )
      ),
    );
  }
}