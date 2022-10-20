import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
          backgroundColor: Colors.black12,
          title: Text(
            'オオサカタロウ',
            style: TextStyle(color: Colors.white),
          )),
      body: Column(
        children: [
          Row(
            children: [
              ClipOval(
                child: Image.asset(
                  'images/img_1.png',
                  width: 90,
                  height: 90,
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  'オオサカタロウ',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              IconButton(
                  color: Colors.white,
                  onPressed: () {},
                  icon: Icon(CupertinoIcons.chat_bubble_text_fill))
            ],
          ),
          Divider(
            color: Colors.greenAccent,
            thickness: 1,
            height: 50,
            indent: 20,
            endIndent: 20,
          ),
        ],
      ),
    );
  }
}
