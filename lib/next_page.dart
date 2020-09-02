import 'package:flutter/material.dart';

class NextPage extends StatefulWidget {

  final String name;
  final String id;
  final String pass;
  NextPage(this.name,this.id,this.pass);

  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
      ),



      body: Padding(
          padding: EdgeInsets.all(30.0),
          child: Column(
            children: [
              Center(
                child: Text("ID ・パスワード", style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20)),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40),
              ),
              Divider(
                // height: 20,
                thickness: 3,
                color: Colors.amber,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 40),
              ),
              Row(
                  children: <Widget>[
                    Container(
                      width: 100,
                      child:Text("ID"),
                    ),
                    Container(
                      width: 20,
                      child: Text(":"),
                    ),
                    Container(
                      width: 200,
                      child: Text(widget.id),
                    ),
                  ]
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
              ),
              Row(
                  children: <Widget>[
                    Container(
                      width: 100,
                      child:Text("Password"),
                    ),
                    Container(
                      width: 20,
                      child: Text(":"),
                    ),
                    Container(
                      width: 200,
                      child: Text(widget.pass),
                    ),
                  ]
              ),

            ],

          )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        child: Icon(Icons.add),

      ),
    );

  }
}
