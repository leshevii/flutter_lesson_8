import 'package:flutter/material.dart';
import 'package:flutter_lesson_8/fetch_file.dart';
import 'package:flutter_lesson_8/main.dart' as mainWidget;

var updateBody;

class BodyMessage extends StatefulWidget {
  BodyMessage({Key? key}) : super(key: key);

  @override
  State<BodyMessage> createState() => _BodyMessageState();
}

class _BodyMessageState extends State<BodyMessage> {
  @override
  void initState() {
    super.initState();
    updateBody = refresh;
  }

  void refresh() => setState(() {});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      builder: (context, snap) {
        if (snap.hasData) {
          return Text(snap.data as String);
        }

        return CircularProgressIndicator();
      },
      future: fetchFileFromAssets(mainWidget.value),
    );
  }
}
