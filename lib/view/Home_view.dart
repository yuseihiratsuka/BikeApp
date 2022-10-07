import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Container(
                alignment: Alignment.topLeft,
                child: Text('ツーリング予定',
                    style: TextStyle(color: Colors.white, fontSize: 25))),
          ),
          Stack(children: [
            Opacity(opacity: 0.4, child: Image.asset('images/img.png')),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Center(
                child: Text('参加予定のツーリングはありません',
                    style: TextStyle(
                      color: Colors.white,
                    )),
              ),
            ),
            Align(
              widthFactor: 100,
              heightFactor: 4,
              child: ElevatedButton(
                child: const Text('参加する',
                    style: TextStyle(color: Colors.white, fontSize: 15)),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red[700],
                  onPrimary: Colors.black,
                  shape: const StadiumBorder(),
                ),
                onPressed: () {},
              ),
            ),
          ]),
          Container(
              alignment: Alignment.topLeft,
              child: Text('イベント予定',
                  style: TextStyle(color: Colors.white, fontSize: 25))),
          Stack(children: [
            Opacity(opacity: 0.4, child: Image.asset('images/img_1.png')),
            Padding(
              padding: const EdgeInsets.only(top: 65.0),
              child: Center(
                child: Text('参加予定のイベントはありません',
                    style: TextStyle(
                      color: Colors.white,
                    )),
              ),
            ),
            Align(
              widthFactor: 100,
              heightFactor: 6,
              child: ElevatedButton(
                child: const Text('参加する',
                    style: TextStyle(color: Colors.white, fontSize: 15)),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red[700],
                  onPrimary: Colors.black,
                  shape: const StadiumBorder(),
                ),
                onPressed: () {},
              ),
            ),
          ]),
          Container(
              alignment: Alignment.topLeft,
              child: Text('おすすめスポット',
                  style: TextStyle(color: Colors.white, fontSize: 25))),
          Stack(children: [
            Opacity(opacity: 0.4, child: Image.asset('images/img_2.png')),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Center(
                child: Text('参加予定のツーリングはありません',
                    style: TextStyle(
                      color: Colors.white,
                    )),
              ),
            ),
            Align(
              widthFactor: 100,
              heightFactor: 4,
              child: ElevatedButton(
                child: const Text('参加する',
                    style: TextStyle(color: Colors.white, fontSize: 15)),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red[700],
                  onPrimary: Colors.black,
                  shape: const StadiumBorder(),
                ),
                onPressed: () {},
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
