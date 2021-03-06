import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Track-IT',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Track-IT'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex;

  List<Widget> _widgets = [
    screen1(),
    screen2(),
    screen3(),
    screen4(),
  ];

  @override
  void initState() {
    super.initState();
    currentIndex = 0;
  }

  void changePage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(21, 47, 62, 1.0),
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: RichText(
            text: TextSpan(
              text: "TRACK",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Muli-Black'),
              children: [
                TextSpan(
                    text: "-IT",
                    style: TextStyle(
                        color: Colors.yellow,
                        fontSize: 20,
                        fontFamily: 'Muli-Black')
                ),
              ],
            ),
          ),
        ),
        actions: <Widget>[
          SizedBox(width: 10),
          InkWell(
            child: Icon(Icons.more_vert),
            onTap: () {
              print("click more");
            },
          ),
          SizedBox(width: 20)
        ],
      ),
      body: Container(
        color: Color.fromRGBO(16, 39, 51, 1),
        height: MediaQuery
            .of(context)
            .size
            .height,
        width: MediaQuery
            .of(context)
            .size
            .width,
        child: _widgets[currentIndex],
      ),
      bottomNavigationBar: BubbleBottomBar(
        backgroundColor: Color.fromRGBO(21, 47, 62, 1.0),
        opacity: 1,
        currentIndex: currentIndex,
        onTap: changePage,
        elevation: 8,
        iconSize: 27,
        //new, gives a cute ink effect
        inkColor: Colors.black12,
        //optional, uses theme color if not specified
        items: <BubbleBottomBarItem>[
          BubbleBottomBarItem(
              backgroundColor: Color.fromRGBO(16, 39, 51, 1.0),
              icon: Icon(Icons.dashboard, color: Colors.white,),
              activeIcon: Icon(Icons.dashboard, color: Colors.yellowAccent,),
              title: Text("Screen 1", style: TextStyle(color: Colors.yellowAccent)
              )
          ),
          BubbleBottomBarItem(
              backgroundColor: Color.fromRGBO(16, 39, 51, 1.0),
              icon: Icon(Icons.access_time, color: Colors.white,),
              activeIcon: Icon(Icons.access_time, color: Colors.yellowAccent,),
              title: Text("Screen 2", style: TextStyle(color: Colors.yellowAccent)
              )
          ),
          BubbleBottomBarItem(
              backgroundColor: Color.fromRGBO(16, 39, 51, 1.0),
              icon: Icon(Icons.folder_open, color: Colors.white,),
              activeIcon: Icon(Icons.folder_open, color: Colors.yellowAccent,),
              title: Text(
                  "Screen 3", style: TextStyle(color: Colors.yellowAccent)
              )
          ),
          BubbleBottomBarItem(
              backgroundColor: Color.fromRGBO(16, 39, 51, 1.0),
              icon: Icon(Icons.menu, color: Colors.white,),
              activeIcon: Icon(Icons.menu, color: Colors.yellowAccent,),
              title: Text("Screen 4", style: TextStyle(color: Colors.yellowAccent)))
        ],
      ),
    );
  }
}
  screen1() {
    return Center(
      child: Text(
        'Screen 1',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
  screen2() {
    return Center(
      child: Text(
      'Screen 2',
      style: TextStyle(color: Colors.white),
    ),
    );
  }
  screen3() {
    return Center(
      child:  Text(
      'Screen 3',
      style: TextStyle(color: Colors.white),
    ),
    );
}
  screen4() {
  return Center(
    child:  Text(
      'Screen 4',
      style: TextStyle(color: Colors.white),
    ),
  );
}
