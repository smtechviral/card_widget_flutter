import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: cardWidget(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark
      ),
    );
  }
}

class cardWidget extends StatefulWidget {
  @override
  _cardWidgetState createState() => _cardWidgetState();
}

class _cardWidgetState extends State<cardWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 300,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 10,
                color: Colors.grey,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        leading: Icon(CupertinoIcons.profile_circled,color:Colors.black,size: 60,),
                        title: Text("smtechviral",style: TextStyle(
                          fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white70
                        ),),
                        subtitle: Text("Youtube Channel",style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white70
                        ),),

                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: ButtonTheme(
                          child:ButtonBar(
                            children: [
                              FlatButton(
                                onPressed: (){

                                },
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                color: Colors.red,
                                child: Text("Subscribe",style: TextStyle(
                                  color: Colors.white70
                                ),),
                              ),
                              FlatButton(
                                onPressed: (){

                                },
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Text("Like"),
                                color: Colors.blueAccent,
                              ),
                              FlatButton(
                                onPressed: (){

                                },
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Text("Share"),
                                color: Colors.black,
                              )
                            ],
                          ),

                        ),
                      )

                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
