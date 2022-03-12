import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class PostsState with ChangeNotifier{
  Future<void> getPostsData() async {
    try {
      var token = 'c63de9039868a4f725a2a5bb9b68ad80cc8e14f8';
      String url = 'http://127.0.0.1:8000/api/posts/';
      http.Response response = await http.get(Uri.parse(url),headers: {
      'Authorization':'token $token'
      });
      print(response.body);
      notifyListeners();
    } catch (e){
      print("error getPostData");
      print(e);
    }
  }
}