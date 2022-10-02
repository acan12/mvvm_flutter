import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget dialogBottomSheet(BuildContext context) => Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ListTile(
          leading: new Icon(Icons.photo),
          title: new Text('Photo'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: new Icon(Icons.music_note),
          title: new Text('Music'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: new Icon(Icons.videocam),
          title: new Text('Video'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: new Icon(Icons.share),
          title: new Text('Share'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
