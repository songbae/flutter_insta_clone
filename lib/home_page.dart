import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Instagram',
                style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
        )
      ),
      body:_buildBody(),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child:SafeArea(
        child:SingleChildScrollView(
          child: Center(
            child:Column(
            children:<Widget> [
              Text('Instagram에 오신 것을 환영합니다',
              style: TextStyle(fontSize: 20.0),

              ),
              Padding(padding:EdgeInsets.all (8.0)),
              Text('사진과 동영상을 보려면 팔로우 하세요'),
              Padding(padding:EdgeInsets.all (16.0)),
              SizedBox(
                width: 260.0,
                child: Card(
                  elevation: 4.0,
                  child: Column(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.all(1.0)),
                      SizedBox(
                        width: 80.0,
                        height: 80.0,
                        child:CircleAvatar(
                          backgroundImage: NetworkImage('https://lh3.googleusercontent.com/proxy/ljgPllktVGmE7BZjN4Z7GKfkKXIBTPLbaVHmwoqBonwdCp6Gz617_NwPlhraGgyaJ-XDAGJO3P-cB-sGS5Skc4XKqCyWESadmqSdj154FifPRoCBxIlUR5y0pgEDmlQe0cIuIKc6BvyvRBHVFu4'),
                        ),
                      ),
                    Padding(padding: EdgeInsets.all(8.0)),
                    Text('이메일 주소',style: TextStyle(fontWeight: FontWeight.bold),),
                    Text('이름',style:TextStyle(fontWeight: FontWeight.w100),),
                      Padding(padding: EdgeInsets.all(8.0)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          width: 70.0,
                          height: 70.0,
                          child:Image.network('https://image.webtoonguide.com/62/16/33620542fae1f81e037c65423795',fit: BoxFit.cover),
                        ),
                        Padding(padding: EdgeInsets.all(1.0)),
                        SizedBox(
                          width: 70.0,
                          height: 70.0,
                          child:Image.network('https://image.webtoonguide.com/49/05/af99d5c252c2ec0e15ac0e4ed06c',fit: BoxFit.cover),
                          ),
                        Padding(padding: EdgeInsets.all(1.0)),
                            SizedBox(
                              width: 70.0,
                              height: 70.0,
                              child:Image.network('https://i.ytimg.com/vi/i0uriZ54Me8/hqdefault.jpg',fit: BoxFit.cover),
                              ),
                      ],
                    ),
                      Padding(padding: EdgeInsets.all(4.0)),
                    Text('송배 친구'),
                      Padding(padding: EdgeInsets.all(4.0)),
                    RaisedButton(
                      child: Text('팔로우'),
                        color: Colors.blue,
                        textColor: Colors.white,
                        onPressed: (){},
                    ),
                      Padding(padding: EdgeInsets.all(4.0)),
                  ],
                  )
                ),
              )
            ],
          ),
        )
        )
        ,)
    );
  }
}
