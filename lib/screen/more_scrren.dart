import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';

class MoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 50),
            child: CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('images/heeflix_logo.png'),
            ),
          ),
          Container(
            child: Text('HEEJE',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white)),
          ),
          Container(
              padding: EdgeInsets.all(15),
              width: 100,
              height: 5,
              color: Colors.red),
          Container(
            padding: EdgeInsets.all(10),
            child: Linkify(
              onOpen: (link) async {
                if (await canLaunch(link.url)) {
                  await launch(link.url);
                }
              },
              text: "https://github.com/tjdgmlwp00",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              linkStyle: TextStyle(color: Colors.white),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: FlatButton(
              onPressed: () {},
              child: Container(
                color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '프로필 수정하기',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
