import 'package:flutter/material.dart';


class AvatarPage extends StatelessWidget {

  static final pageName = 'avatar';


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        backgroundColor: Colors.redAccent,
        actions: <Widget>[

          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('RR'),
              backgroundColor: Colors.white,
              foregroundColor: Colors.redAccent,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://scontent.faqp2-3.fna.fbcdn.net/v/t1.6435-9/212329845_513879133176077_3032652229441326638_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeHBUgkzpFGof3OFBvBivv5NGXfM6GwJx_cZd8zobAnH94KTEkjBN4Q4hGFskcgHAk96RMHt4S0EA4XbAj_9AcG5&_nc_ohc=CD2DsBhzItUAX_X7uYK&_nc_ht=scontent.faqp2-3.fna&oh=42c0ec642e85c9de64c360a6ec3d23fb&oe=61A712BC'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration( milliseconds: 200 ),
        ),
      ),
    );
    
  }
}

