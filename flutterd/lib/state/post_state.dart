import 'package:flutterd/model/user_post_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/cupertino.dart';

class PostState with ChangeNotifier {
  late List<Post> _posts;

  Future<void> getPostData() async {
    try {
      var token = '6118c6c03cb38309af84857ee3daabbd2acee325';
      String url = 'http://127.0.0.1:8000/api/posts/';
      http.Response response = await http
          .get(Uri.parse(url), headers: {'Authorization': 'token $token'});
      var data = json.decode(response.body) as List;
      List<Post> temp = [];
      data.forEach((element) {
        Post post = Post.fromJson(element);
        temp.add(post);
      });
      _posts = temp;
      notifyListeners();
    } catch (e) {
      print("error getPostData");
      print(e);
      //return false;
    }
  }

  List<Post> get post {
    return [..._posts];
  }
}
