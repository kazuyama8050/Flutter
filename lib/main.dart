import 'package:flutter/material.dart';

import 'next_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);



  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  final nameController=TextEditingController();
  final idController=TextEditingController();
  final pwController=TextEditingController();

  List<String> nameList=[];
  List<String> idList=[];
  List<String> passList=[];

  void _addItem(String nameText,idText,passtext){
    setState(() {
      nameList.add(nameText);
      idList.add(idText);
      passList.add(passtext);
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("パスワード管理"),
      ),

      body: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(30),
            ),

            Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 30),
                    width: 110,
                    child:Text("サイト名"),
                  ),
                  Container(
                    width: 20,
                    child: Text(":"),
                  ),
                  Container(
                    width: 200,
                      child: TextField(
                        controller: nameController,
                      ),
                  ),
                ]
            ),

            Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 30),
                    width: 110,
                    child:Text("ID"),
                  ),
                  Container(
                    width: 20,
                    child: Text(":"),
                  ),
                  Container(
                    width: 200,
                    child: TextField(
                      controller: idController,
                    ),
                  ),
                ]
            ),

            Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 30),
                    width: 110,
                    child:Text("パスワード"),
                  ),
                  Container(
                    width: 20,
                    child: Text(":"),
                  ),
                  Container(
                    width: 200,
                    child: TextField(
                      controller: pwController,
                    ),
                  ),
                ]
            ),
            Padding(
              padding: EdgeInsets.only(top: 40),
            ),
            Divider(
              height: 40,
              thickness: 3,
              color: Colors.amber,
            ),

            Expanded(
                child: ListView.builder(
                  itemBuilder: (BuildContext context,int index) {
                    return Column(
                        children: <Widget>[
                          ListTile(
                            leading: Icon(Icons.security),
                            title: Text(nameList[index]),
                            onTap: () {
                              Navigator.push(
                                  context, MaterialPageRoute(
                                  builder: (context) => NextPage(nameList[index], idList[index], passList[index]))

                              );
                            },
                          ),
                          Divider(),
                        ]
                    );
                  },
                  itemCount: nameList.length,
                )
            ),
          ],
        ),


      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _addItem(nameController.text,idController.text,pwController.text);
          nameController.clear();
          idController.clear();
          pwController.clear();
        },
        tooltip: "increment",
        child: Icon(Icons.add),

      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

// todo ホーム画面のタイトル変更
// todo リスト表示
// todo リスト間に区切り線表示
// todo リスト表示を動的に
// todo フロートアクションボタンをタップした時に、リストに一つ追加
// todo 新しい画面を作成し、リストをタップした時に遷移
// todo 新しい画面のレイアウトを作成
// todo 新しい画面にリストからデータを引き継ぐ
