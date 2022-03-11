import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class PostsState with ChangeNotifier{
  Future<void> getPostsData() async {
    try {
      String urls = 'http://127.0.0.1:8000/api/posts/';
      final Uri url = Uri.parse(urls);
      http.Response response = await http.get(url);
      print(response.body);
      notifyListeners();
    } catch (e){
      print("error getPostData");
      print(e);
    }
  }
}