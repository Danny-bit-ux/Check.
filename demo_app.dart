import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo App',
      theme: ThemeData(
            primarySwatch: Colors.red,
            backGroundColor: Colors.white,
            //textTheme: 
      ),
    );
    home: HomePage(),
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: SafeArea(  
        child: new Container(
          height: MediaQuery.of(context).size.height - 90,
          decoration: new BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(35),
              bottomRight: Radius.circular(35),
            ),
          ),

          child: new ListView(
            padding: const EdgeInsets.all(10.0), 
            children: <Widget>[
              new Container(
                child: new Row(
                  children: const <Widget>[
                  Icon(
                   Icons.favorite,
                   color: Colors.pink,
                   size: 24.0,
                   semanticLabel: 'Text to announce in accessibility modes',
                  ),
                  child: new Container(
                    child: new Image.network()
                  ),
                  new Text(
                    'First Name/Last Name',
                    textDirection:TextDirection.ltr,
                    softWrap: true,
                  ),   
                ),              
              ),
              
              new Container(
                    child: new RichText(
                      text: TextSpan(
                        text: 'Find \n',
                        style: DefaulTextStyle.of(context).style, fontWeight: FontWeight.bold,
                        children: <TextSpan>[
                          TextSpan(text:'best place', style: TextStyle(fontSize: 15.0),),
                          TextSpan(text:'nearby', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue)),
                        ],
                      ),
                      ),
                  ),  

              new Container(
                margin: EdgeInsets.symmetric(horizontal: kDefaultPadding);
                height: 54,
                decoration: new BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ),

                new Row(
                  children: <Widget>[
                    new Expanded(
                      child: TextField(
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          hintText: "Search your",
                          hintStyle: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ), 
                          enabledBorder: InpurBorder.none,
                          focusBorder: InputBorder.none,
                        ),
                      ),
                    ),
                    SvgPicture.asset("assets/icons/search.svg"),
                  ],
                ),
              );                 
            ],
             new Row(
              children: 
              new Container(
                height: 45,
                width: 35,
                color: Colors.lightBlue,
                alignment: Alignment.topLeft,
                padding: EdgeInsets.all(40),
                margin: EdgeInsets.only(top:30),
                flatButton: FlatButton() {},
                decoration: new BoxDecoration(
                  borderRadius: BorderRadius.circular(20)
                ),
                child: new Center(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: new Column(
                    icons: Icons.home, size: 64.0, color: Colors.darkBlue,
                  ),
                ),
              ),
              new Container( 
                height: 45,
                width: 35,
                color: Colors.lightBlue,
                alignment: Alignment.topLeft,
                padding: EdgeInsets.all(40),
                margin: EdgeInsets.only(top:30),
                flatButton: FlatButton() {},
                decoration: new BoxDecoration(
                  borderRadius: BorderRadius.circular(20)
                ),
                child: new Center(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: new Column(
                    icons: Icons.account_circle, size: 64.0, color: Colors.darkBlue,),
              new Container( 
                height: 45,
                width: 35,
                color: Colors.lightBlue,
                alignment: Alignment.topLeft,
                padding: EdgeInsets.all(40),
                margin: EdgeInsets.only(top:30),
                flatButton: FlatButton() {},
                decoration: new BoxDecoration(
                  borderRadius: BorderRadius.circular(20)
                ),
                child: new Center(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: new Column(
                    icons: Icons.iso, size: 64.0, color: Colors.darkBlue,),
            );
               
            ],  
        ),
      ),
     ), 
    );
  }
}