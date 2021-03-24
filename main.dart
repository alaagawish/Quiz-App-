import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
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
  var answer = ["", "", ""];
  var question = [
    "What's your favorite color?",
    "What's your favorite animal?",
    "What's your favorite fruit?",
    "Results"
  ];
  var choice1 = [
    "Black",
    "Dog",
    "Orange",
  ];
  var choice2 = ["Green", "Cat", "Apple"];
  var choice3 = ["Blue", "Lion", "Banana"];
  var choice4 = ["Yellow", "Monkey", "Watermelon"];
  var i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz App"),
      ),
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              question[i],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 10),
            if (i < 3)
              FlatButton(
                minWidth: double.infinity,
                color: Colors.blue,
                child: Text(
                  choice1[i],
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () => setState(() {
                  answer[i] = choice1[i];
                  i < 3 ? i++ : i = i;
                }),
              ),
            if (i == 3)
              Text(
                "Your favorite color is " + answer[0],
                style: TextStyle(
                  fontSize: 20,
                  backgroundColor: Colors.black12,
                ),
              ),
            SizedBox(height: 7),
            if (i < 3)
              FlatButton(
                minWidth: double.infinity,
                color: Colors.blue,
                child: Text(
                  choice2[i],
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () => setState(() {
                  answer[i] = choice2[i];
                  i < 3 ? i++ : i = i;
                }),
              ),
            if (i == 3)
              Text(
                "Your favorite animal is " + answer[1],
                style: TextStyle(
                  fontSize: 20,
                  backgroundColor: Colors.black12,
                ),
              ),
            SizedBox(height: 7),
            if (i < 3)
              FlatButton(
                minWidth: double.infinity,
                color: Colors.blue,
                child: Text(
                  choice3[i],
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () => setState(() {
                  answer[i] = choice3[i];
                  i < 3 ? i++ : i = i;
                }),
              ),
            if (i == 3)
              Text(
                "Your favorite fruit is " + answer[2],
                style: TextStyle(
                  fontSize: 20,
                  backgroundColor: Colors.black12,
                ),
              ),
            SizedBox(height: 7),
            if (i < 3)
              FlatButton(
                minWidth: double.infinity,
                color: Colors.blue,
                child: Text(
                  choice4[i],
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () => setState(() {
                  answer[i] = choice4[i];
                  i < 3 ? i++ : i = i;
                }),
              ),
            if (i == 3)
              FlatButton(
                color: Colors.black,
                child: Text(
                  "Again",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                onPressed: () => setState(() {
                  i = 0;
                }),
              ),
            SizedBox(height: 7),
          ],
        ),
      ),
    );
  }
}
