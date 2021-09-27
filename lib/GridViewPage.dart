import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class GridViewPage extends StatefulWidget {

  const GridViewPage({Key? key}) : super(key: key);

  @override
  State<GridViewPage> createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {


  var data = null;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getData();
  }

  void getData() async{
    var url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
    var response = await http.get(url);
    data = jsonDecode(response.body);
    setState(() {

    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NetWork Handler"),
      ),
      body: data != null ? GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2
        ),
        itemBuilder: (context,index){
          return ListTile(
            leading: Image.network("https://picsum.photos/300/300?random=${index}",fit: BoxFit.cover,),
            title: Text(data[index]["title"]),
            subtitle: Text(data[index]["body"]),
          );
        },
        itemCount: data.length,

      ) : Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

