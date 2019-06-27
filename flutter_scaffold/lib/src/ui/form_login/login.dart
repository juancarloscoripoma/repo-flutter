import 'package:flutter/material.dart';

class Login extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return new LoginState();
  }
}

class LoginState extends State<Login> {

  final TextEditingController _userController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Wellcome Sign up"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),

      backgroundColor: Colors.blueGrey,
      
      body: new Container(
        alignment: Alignment.topCenter,
        child: new Column(
          children: <Widget>[
            // image
            new Image.asset("images/face.png", width: 90.0,height: 90.0,color: Colors.lightGreen,),
            
            //form
            new Container(
              height: 180.0,
              width: 380.0,
              color: Colors.white,
              
              child: new Column(
                children: <Widget>[
                  new TextField(controller: _userController, decoration: new InputDecoration(hintText: "Username", icon: new Icon(Icons.person)),),
                  new TextField(controller: _passwordController, decoration: new InputDecoration(hintText: "Password", icon: new Icon(Icons.lock)),obscureText: true,),

                ],
              ),
            )
          ],
        ),
      ),



    );
  }
}