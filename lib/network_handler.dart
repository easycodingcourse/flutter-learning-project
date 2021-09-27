import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:learning/myDrawer.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class NetworkHandler extends StatefulWidget {
  const NetworkHandler({Key? key}) : super(key: key);

  @override
  State<NetworkHandler> createState() => _NetworkHandlerState();
}

class _NetworkHandlerState extends State<NetworkHandler> {
  var data = null;
  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  @override
  void initState() {
    super.initState();

    getData();
  }

  void getData() async {
    var url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
    var response = await http.get(url);

    data = jsonDecode(response.body);
    _refreshController.refreshCompleted();

    setState(() {


    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("NetWork Handler"),
      ),
      body: data != null
          ? SmartRefresher(
              controller: _refreshController,
              onRefresh: getData,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Image.network(
                      "https://picsum.photos/300/300?random=$index",
                      fit: BoxFit.cover,
                    ),
                    title: Text(data[index]["title"]),
                    subtitle: Text(data[index]["body"]),
                  );
                },
                itemCount: data.length,
              ))
          : const Center(
              child: CircularProgressIndicator(),
            ),
      drawer: const MyDrawer(),
    );
  }
}
