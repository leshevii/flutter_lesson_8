import 'package:flutter/material.dart';
import 'package:flutter_lesson_8/body_message.dart' as bodyMessage;

void main() {
  runApp(const MyApp());
}

String value = 'unbenknown';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Demo Home Page')),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 3,
                      child: TextField(
                        onChanged: (val) {
                          value = val;
                        },
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: styleInput(),
                          focusedBorder: styleInput(),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: GestureDetector(
                        onTap: () {
                          bodyMessage.updateBody();
                        },
                        child: Center(
                          child: Text(
                            'Найти',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              bodyMessage.BodyMessage()
            ],
          ),
        ),
      ),
    );
  }

  OutlineInputBorder styleInput() {
    return const OutlineInputBorder(
      borderSide: BorderSide(width: 3),
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(10),
        bottomLeft: Radius.circular(10),
      ),
    );
  }
}
