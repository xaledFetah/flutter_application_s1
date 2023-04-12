import 'package:flutter/material.dart';

class Home_p extends StatelessWidget {
  const Home_p({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(8),
            child: MaterialButton(
              color: Colors.amber[50],
              onPressed: () {
                Navigator.pushNamed(context, "page_9");
              },
              child: Text("page_9"),
            ),
          ),
          Container(
            margin: EdgeInsets.all(8),
            child: MaterialButton(
              color: Colors.green[50],
              onPressed: () {
                Navigator.pushNamed(context, "page_13");
              },
              child: Text("Page_13"),
            ),
          ),
          Container(
            margin: EdgeInsets.all(8),
            child: MaterialButton(
              color: Colors.blue[50],
              onPressed: () {
                Navigator.pushNamed(context, "page_14");
              },
              child: Text("Page_14"),
            ),
          ),
        ],
      ),
    );
  }
}
