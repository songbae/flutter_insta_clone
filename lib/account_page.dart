import 'package:flutter/material.dart';
class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  buildAppBar(),
      body: _buildBody(),
    );
  }

  Widget buildAppBar() {
    return AppBar(
      actions: <Widget>[
        IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: (){},
            )
      ],
    );
  }

 Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child:Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:<Widget>[
        Column(
        children:<Widget> [
          Stack(
            children:<Widget> [
              SizedBox(
                width: 80.0,
                height:80.0,
                child: CircleAvatar(
                  backgroundImage: NetworkImage('https://lh3.googleusercontent.com/proxy/ljgPllktVGmE7BZjN4Z7GKfkKXIBTPLbaVHmwoqBonwdCp6Gz617_NwPlhraGgyaJ-XDAGJO3P-cB-sGS5Skc4XKqCyWESadmqSdj154FifPRoCBxIlUR5y0pgEDmlQe0cIuIKc6BvyvRBHVFu4'),
                ),
              ),
              Container(
                width: 80.0,
                height: 80.0,
                alignment: Alignment.bottomRight,
                child: SizedBox(
                  width: 25.0,
                  height: 25.0,
                  child: FloatingActionButton(
                    onPressed: null,
                    backgroundColor: Colors.blue,
                    child: Icon(Icons.add),
                  ),
                ),
              )
            ],
          ),
        Text('이름',
        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),
        ),

        ],
      ),
        Text('0\n게시물',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize:18.0 ),
        ),

        Text('0\n팔로워',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize:18.0 ),),
        Text('0\n팔로잉',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize:18.0 ),),
      ]
    )
    );
 }
}
