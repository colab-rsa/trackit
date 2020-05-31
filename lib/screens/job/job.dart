import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final List<String> backgroundList = [
  'assets/astronaut.jpg',
  'assets/cats.jpg',
  'assets/Cats_bite_camera.jpg',
  'assets/FreeGreatPicture.jpg',
  'assets/sci_fi_science.jpg',
];

final List<Map<String, dynamic>> jobList = [
  {
    'title': 'co-lab/track-app',
    'poster': 'assets/astronaut.jpg',
  },
  {
    'title': 'co-lab/track-api',
    'poster': 'assets/cats.jpg',
  },
  {
    'title': 'Photo shoot',
    'poster': 'assets/Cats_bite_camera.jpg',
  },
  {
    'title': 'Assignments',
    'poster': 'assets/FreeGreatPicture.jpg',
  },
  {
    'title': 'Meetings',
    'poster': 'assets/sci_fi_science.jpg',
  },
];

final List<Widget> imageSliders = jobList
    .map(
      (item) => Container(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Container(
                height: 350,
                width: 220,
                decoration: new BoxDecoration(),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  child: Image.asset(item['poster'],
                      fit: BoxFit.cover, width: 1000.0),
                )),
            SizedBox(
              height: 15,
            ),
            Text(
              item['title'],
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    )
    .toList();

class JobPage extends StatefulWidget {
  @override
  _JobPageState createState() => _JobPageState();
}

class _JobPageState extends State<JobPage> {
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

  CarouselController buttonCarouselController = CarouselController();
  ScrollController _scrollController = new ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(16, 39, 51, 1),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Expanded(
              child: ListView.builder(
                  controller: _scrollController,
                  reverse: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: backgroundList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return new Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: new BoxDecoration(
                          color: Colors.black12,
                          image: new DecorationImage(
                            image: new ExactAssetImage(backgroundList[index]),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: new Container(
                          decoration: new BoxDecoration(
                              color: Colors.black.withOpacity(0.6)),
                        ));
                  }),
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height,
                aspectRatio: 2,
                carouselController: buttonCarouselController,
                viewportFraction: 0.68,
                enlargeCenterPage: true,
                enableInfiniteScroll: false,
                onScrolled: (data) {
                  _scrollController.animateTo(
                    ((data * 125 / imageSliders.length) / 100) *
                        _scrollController.position.maxScrollExtent,
                    curve: Curves.ease,
                    duration: const Duration(milliseconds: 100),
                  );
                },
              ),
              items: imageSliders,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
