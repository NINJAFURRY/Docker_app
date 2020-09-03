import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(NewApp());
}

String x;
String y;
String z;

var vol = Icon(
  Icons.border_outer,
  color: Colors.black,
);
/*alert() {
  showDialog(
    context: context(
    builder: (_) => AlertDialog(
      title: Text("take input"),
      content: Text("do you accept"),
      actions: <Widget>[
        FlatButton(
          onPressed: null,
          child: Text("no"),
        ),
        FlatButton(onPressed: null, child: Text("yes"))
      ],
      elevation: 24.0,
    ),
    barrierDismissible: false,
  );
}
*/

/*newq() {
  Future<String> createAlertDialog(BuildContext context) {
    TextEditingController customcontroller = TextEditingController();
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("title"),
        );
        content:
        TextField(
          controller: customcontroller,
        );
        actions:
        <Widget>[
          MaterialButton(
              elevation: 5.0,
              child: Text("submit"),
              onPressed: () {
                Navigator.of(context).pop(customcontroller.text.toString());
              })
        ];
      },
    );
  }
}
*/

class NewApp extends StatelessWidget {
  web() async {
    print(x);
    var url = "http://192.168.43.70/cgi-bin/all.py?x=$x&y=$y&z=$z";
    var r = await http.get(url);
    print(r.body);
  }

  doc() async {
    var url = "http://192.168.43.70/cgi-bin/ls.py";
    var r = await http.get(url);
    print(r.body);
  }

  start() async {
    var url = "http://192.168.43.70/cgi-bin/start.py";
    var r = await http.get(url);
    print(r.body);
  }

  net() async {
    var url = "http://192.168.43.70/cgi-bin/net.py";
    var r = await http.get(url);
    print(r.body);
  }

  vol() async {
    var url = "http://192.168.43.70/cgi-bin/vol.py";
    var r = await http.get(url);
    print(r.body);
  }

  all() async {
    var url = "http://192.168.43.70/cgi-bin/tt.py";
    var r = await http.get(url);
    print(r.body);
  }

  images() async {
    var url = "http://192.168.43.70/cgi-bin/ima.py";
    var r = await http.get(url);
    print(r.body);
  }

  run() async {
    var url = "http://192.168.43.70/cgi-bin/run.py";
    var r = await http.get(url);
    print(r.body);
  }

  cc() async {
    var url = "http://192.168.43.70/cgi-bin/cc.py";
    var r = await http.get(url);
    print(r.body);
  }

  vc() async {
    var url = "http://192.168.43.70/cgi-bin/vc.py";
    var r = await http.get(url);
    print(r.body);
  }

  nc() async {
    var url = "http://192.168.43.70/cgi-bin/nc.py";
    var r = await http.get(url);
    print(r.body);
  }

  var icon = Icon(Icons.menu);

  /*showAlertDialog(BuildContext context) {
    // Create button
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

  */
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(
          child: ListView(padding: EdgeInsets.zero, children: <Widget>[
            DrawerHeader(
              padding: EdgeInsets.all(50),
              child: Text(
                'Docker Features',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontFamily: 'Roboto',
                ),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/docker.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Text('Install docker on rhel 7'),
              onTap: doc,
            ),
            ListTile(
              title: Text('Start docker service'),
              onTap: start,
            ),
            ListTile(
              title: Text("List all Network"),
              onTap: net,
            ),
            ListTile(
              title: Text('List all Volume'),
              onTap: vol,
            ),
            ListTile(
              title: Text(' List all Container'),
              onTap: all,
            ),
            ListTile(
              title: Text('List all available images'),
              onTap: images,
            ),
            ListTile(
              title: Text('List all Running Container'),
              onTap: run,
            ),
          ]),
        ),
        appBar: AppBar(
          leading: icon,
          title: Text('Docker'),
          backgroundColor: Colors.blue[100],
        ),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage('assets/docker.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          padding: EdgeInsets.all(30),
          width: double.infinity,
          height: double.infinity,
          child: Row(
            children: <Widget>[
              Container(
                width: 100,
                height: 400,
                margin: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      height: 100,
                      width: 100,
                      color: Colors.white,
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.network_check,
                            size: 50,
                          ),
                          Text('Network'),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      height: 100,
                      width: 100,
                      color: Colors.white,
                      child: Column(children: <Widget>[
                        Icon(
                          Icons.border_all,
                          size: 50,
                        ),
                        Text('Containers'),
                      ]),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      height: 100,
                      width: 100,
                      color: Colors.white,
                      child: Column(children: <Widget>[
                        Icon(
                          Icons.directions_run,
                          size: 50,
                        ),
                        Text('Running'),
                      ]),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      height: 100,
                      width: 100,
                      color: Colors.white,
                      child: Column(children: <Widget>[
                        Icon(
                          Icons.storage,
                          size: 50,
                        ),
                        Text('Volume'),
                      ]),
                    ),
                  ],
                ),
              ),
              Container(
                width: 215,
                height: 500,
                child: Column(
                  children: <Widget>[
                    Card(
                      child: Text("To create new network "),
                    ),
                    Card(
                      margin: EdgeInsets.symmetric(vertical: 15),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Enter new network name",
                            suffixIcon: IconButton(
                                onPressed: nc,
                                icon: Icon(
                                  Icons.send,
                                  color: Colors.black,
                                ))),
                        onChanged: (value) {
                          y = (value);
                        },
                      ),
                    ),
                    Card(
                      child: Text("To create new Container"),
                    ),
                    Card(
                      margin: EdgeInsets.symmetric(vertical: 15),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Enter new container name",
                          suffixIcon: IconButton(
                              onPressed: cc,
                              icon: Icon(
                                Icons.send,
                                color: Colors.black,
                              )),
                        ),
                        onChanged: (value) {
                          y = (value);
                        },
                      ),
                    ),
                    Card(
                      child: Text("Running container"),
                    ),
                    Card(
                      margin: EdgeInsets.symmetric(vertical: 15),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Enter new ",
                            suffixIcon: IconButton(
                              onPressed: web,
                              icon: Icon(
                                Icons.send,
                              ),
                              color: Colors.black,
                            )),
                        onChanged: (value) {
                          y = (value);
                        },
                      ),
                    ),
                    Card(
                      child: Text("To create new volume"),
                    ),
                    Card(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Enter  new volume name",
                            suffixIcon: IconButton(
                                onPressed: nc,
                                icon: Icon(
                                  Icons.send,
                                  color: Colors.black,
                                ))),
                        onChanged: (value) {
                          y = (value);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Todo {
  final String title;
  final String description;

  Todo(this.title, this.description);
}

final todos = List<Todo>.generate(
  20,
  (i) => Todo(
    'Todo $i',
    'A description of what needs to be done for Todo $i',
  ),
);

class TodosScreen extends StatelessWidget {
  final List<Todo> todos;

  //requiring the list of todos
  TodosScreen({Key key, @required this.todos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todos'),
      ),
      //passing in the ListView.builder
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return ListTile(title: Text(todos[index].title));
        },
      ),
    );
  }
}
