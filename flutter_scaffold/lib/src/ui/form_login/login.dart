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
  String _welcomeString = "";

  void _erase(){
    setState(() {
      _userController.clear();
      _passwordController.clear();
    });
  }

  void _showWellcome(){
    setState(() {
      if(_userController.text.isNotEmpty && _passwordController.text.isNotEmpty){
        _welcomeString = _userController.text;
      }else{
        _welcomeString = "Nothing!";
      }
    });
  }

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
        child: new ListView( /*Column*/
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

                  new Padding(padding: new EdgeInsets.all(10.5)),

                  new Center(
                    child: new Row(
                      children: <Widget>[
                        //Login button
                        new Container(
                          margin: const EdgeInsets.only(left: 38.0),
                          child: new RaisedButton(onPressed: _showWellcome,color: Colors.redAccent, child: new Text("Login",style: new TextStyle(color: Colors.white, fontSize: 16.9),), ),
                        ),

                        new Container(
                          margin: const EdgeInsets.only(left: 120.0),
                          child: new RaisedButton(onPressed: _erase,color: Colors.redAccent, child: new Text("Clear",style: new TextStyle(color: Colors.white, fontSize: 16.9),), ),
                        ),

                      ],
                    ),
                  )

                ],
              ),
            ),
            new Padding(padding: const EdgeInsets.all(14.0)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text("STN, $_welcomeString", style: new TextStyle(color: Colors.white, fontSize: 19.4, fontWeight: FontWeight.w500),)
              ],
            ),
          ],
        ),
      ),



    );
  }
}