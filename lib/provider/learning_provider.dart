
import 'package:flutter/material.dart';
import 'package:learning/models/blog.dart';
import 'package:http/http.dart' as http;

class LearningProvider extends ChangeNotifier {
  bool _loading = true;
  List<Blog> _blogs = [];
  String _message = "";


  bool get loading => _loading;

  List<Blog> get blogs => _blogs;

  String get message => _message;



  Future getBlogs() async {
    var response =
        await http.post(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
    if(response.statusCode==200){
      var body = response.body;

      print(body);

      _loading = false;
      notifyListeners();

    }else{
      _message = "something wrong . Please try again later";
      notifyListeners();
    }
  }


}
