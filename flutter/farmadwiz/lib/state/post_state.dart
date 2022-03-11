import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class PostsState with ChangeNotifier{
  Future<void> getPostsData() async {
    try {
      String url = 'http://127.0.0.1:8000/api/posts/';
      http.Response response = await http.get(url);
      print(response.body);
    } catch (e){
      print("error getPostData");
      print(e);
    }
  }
}