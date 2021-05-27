import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  bool _enable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('loading screen'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
                child: Shimmer.fromColors(
              baseColor: Colors.grey.shade300,
              highlightColor: Colors.grey.shade100,
              enabled: _enable,
              child: ListView.builder(
                itemBuilder: (context, index) => Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        width: 50.0,
                        height: 50.0,
                        color: Colors.white,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          //   mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                width: double.infinity,
                                height: 8.0,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: double.infinity,
                                height: 8.0,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                width: 50.0,
                                height: 8.0,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                itemCount: 6,
              ),
            ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          setState(() {
            _enable = !_enable;
          });
        },
        child: Icon(
          _enable ? Icons.stop : Icons.play_arrow,
          color: _enable ? Colors.red : Colors.green,
        ),
      ),
    );
  }
}
