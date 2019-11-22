import 'package:flutter/material.dart';
import 'package:person_sniffer/person_sniffer_api.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Person Sniffer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Person Sniffer'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

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
      body: FutureBuilder(
        future: PersonSnifferApi.getNames(),
        initialData: "Loading",
        builder: (BuildContext context, AsyncSnapshot<String> text) {
        return Column(children: <Widget>[
          ListTile(leading: Image.network("https://media.licdn.com/dms/image/C5603AQHsMVLwlEuC4A/profile-displayphoto-shrink_200_200/0?e=1579132800&v=beta&t=5e_J1-evHABlsOLuTsUFgYRyScb-aE5B2hr7Nb9ghSk", fit: BoxFit.fill),
          title: Text("Rasmus Brædder Hemmingsen")
        ),
        ListTile(leading: Image.network("https://media.licdn.com/dms/image/C5622AQHZFUiHL9kxvQ/feedshare-shrink_800/0?e=1576713600&v=beta&t=eBiG6-W4AVzR9dyLbpfykFBws_SYyuOKRc91CJORGBw", fit: BoxFit.fill),
          title: Text("Helsingforsgade 9, st. 007, 8200 Aarhus N")
        )
        ],);
        
        
        // ListTile(leading: Image.network("https://media.licdn.com/dms/image/C5603AQHsMVLwlEuC4A/profile-displayphoto-shrink_200_200/0?e=1579132800&v=beta&t=5e_J1-evHABlsOLuTsUFgYRyScb-aE5B2hr7Nb9ghSk", fit: BoxFit.fill),
        //   title: Text("Rasmus Brædder Hemmingsen")
        // );
        
        // return new SingleChildScrollView(
        //   padding: new EdgeInsets.all(8.0),
        //   child: 
        //   new Image.network(
        //     "https://media.licdn.com/dms/image/C5603AQHsMVLwlEuC4A/profile-displayphoto-shrink_200_200/0?e=1579132800&v=beta&t=5e_J1-evHABlsOLuTsUFgYRyScb-aE5B2hr7Nb9ghSk",
        //     fit: BoxFit.fill,
        // ));
    }),
    
    );  
  }
}
