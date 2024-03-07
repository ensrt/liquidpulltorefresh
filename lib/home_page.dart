import 'package:flutter/material.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Future<void> _handleRefresh() async {
    return await Future.delayed(Duration(seconds: 1));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      body: LiquidPullToRefresh(
        onRefresh: _handleRefresh,
        color: Colors.deepPurple,
        height: 140,
        backgroundColor: Colors.deepPurple[200],
        animSpeedFactor: 2,
        showChildOpacityTransition: false,

        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
            child: ClipRect(
              child: Container(
                height: 300,
                color: Colors.deepPurple,
              ),
            ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: ClipRect(
                child: Container(
                  height: 300,
                  color: Colors.deepPurple,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: ClipRect(
                child: Container(
                  height: 300,
                  color: Colors.deepPurple,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

