import 'package:flutter/material.dart';

class VideoDetailPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Center(
        child: Container(
          child: Text('動画'),
        ),
      ),
    );
  }
}
