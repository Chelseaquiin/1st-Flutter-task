import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blueGrey,
      ),
      home: MyHomePage(title: 'Nweze Super App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Padding(
          padding: const EdgeInsets.only(top: 20,bottom: 20,),
          child: Column(
            // Column is also a layout widget. It takes a list of children and
            // arranges them vertically. By default, it sizes itself to fit its
            // children horizontally, and tries to be as tall as its parent.
            //
            // Invoke "debug painting" (press "p" in the console, choose the
            // "Toggle Debug Paint" action from the Flutter Inspector in Android
            // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
            // to see the wireframe for each widget.
            //
            // Column has various properties to control how it sizes itself and
            // how it positions its children. Here we use mainAxisAlignment to
            // center the children vertically; the main axis here is the vertical
            // axis because Columns are vertical (the cross axis would be
            // horizontal).
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                radius: 75,
                              child: CircleAvatar(
                  minRadius: 73,
                  maxRadius: 73,
                  backgroundColor: Colors.deepPurple,
                  backgroundImage: NetworkImage("https://avatars0.githubusercontent.com/u/60669974?s=200&v=4"),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              LabelWidget(title: "Name", trail: "Nweze Uzoamaka",),
              LabelWidget(title: "Email", trail: "uzonweze@gmail.com",),
              LabelWidget(title: "Track", trail: "Mobile development",),
              Row(children: <Widget>[
                Icon(
                  Icons.chat_bubble
                ),
                LabelWidget(title: "Slack Username", trail: "Chelseaquiin",)
                ],
              )
            ],
          ),
        ),
      ),

    );
  }
}

class LabelWidget extends StatelessWidget {
  final String title;
  final String trail;
  const LabelWidget({
    Key key, this.title, this.trail,
    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text:"$title: ",
        children: <TextSpan>[
          TextSpan(
            text: trail,
            style: TextStyle( color: Colors.black54, fontSize: 20  ),
          )
        ],
        style: TextStyle(
          color: Colors.black87,
          fontSize: 25,
        ),
      ),
      textAlign: TextAlign.left,
    );
  }
}
