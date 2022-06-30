import 'package:flutter/material.dart';
import 'package:youtube_app/video_detail.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  final items = List<String>.generate(10000, (i) => 'Item $i');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,  //意味わからん？
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,   //文字左寄せ
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          leading: Icon(  //appbarの左側のアイコン
              Icons.videocam
          ),
          title: const Text(
            'BiSH',
          ),
          actions: <Widget>[
            SizedBox(
              width: 44,
              child: FlatButton(
                child: Icon(Icons.search),
                onPressed: () {  },
              ),
            ),
            SizedBox(
              width: 44,
              child: FlatButton(
                child: Icon(Icons.more_vert),
                onPressed: (){},
              ),
            ),
          ],
        ),
        body: Container(
          child: Column(
            children: <Widget> [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: Image.network(
                        'https://cdn.tower.jp/za/o/03/a4943877012003.jpg',
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        const Text(
                          'BiSH',
                          textAlign: TextAlign.left,                    ),
                        FlatButton(
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.video_call,
                                color: Colors.red,
                              ),
                              Text('チャンネル登録'),
                            ],
                          ),
                          onPressed: (){},
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: ()async{
                        await Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => VideoDetailPage()),
                        );
                      },

                      contentPadding: EdgeInsets.all(8),
                      leading: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkFbEBFWisuyFhIXNRzem56Ycsli_NuoWSfw&usqp=CAU',
                      ),
                      title: Column(
                        children: <Widget>[
                          Text('BiSH / ぴょ[OFFiCiAL ViDEO]',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Row(children: <Widget>[
                            Text('38万回再生',
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                            Text('　10日前',
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                          ],
                          ),
                        ],
                      ),
                      trailing: Icon(Icons.more_vert),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
