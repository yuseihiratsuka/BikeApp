import 'package:flutter/material.dart';
import 'package:testtestest/view/Home_view.dart';

import 'Profile_view.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfilePage(),
                ));
          },
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[800]),
            child: Row(
              children: [
                ClipOval(
                  child: Image.asset(
                    'images/img_1.png',
                    width: 70,
                    height: 70,
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, bottom: 20.0),
                  child: Column(
                    children: [
                      Text(
                        'オオサカタロウ',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 45.0),
                        child: Text(
                          'My Bike:cb400sf',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: ListView(
              children: const <Widget>[
                ListTile(
                  leading: Icon(
                    Icons.notification_add_sharp,
                    color: Colors.white,
                  ),
                  title: Text(
                    "通知設定",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                  title: Text(
                    "設定A",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ),
        TextButton(onPressed: () {}, child: Text('ログアウト')),
        TextButton(onPressed: () {}, child: Text('アカウント削除'))
      ],
    );
  }
}
