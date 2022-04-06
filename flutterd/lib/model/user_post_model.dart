import 'dart:convert';

import 'package:flutter/foundation.dart';

class UserPostModel {
  final String profileUrl;
  final String name;
  final String headline;
  final bool isVideoPost;
  final String description;
  final String video;
  final String image;
  final String comments;
  final String likes;
  final String tags;
  final bool isOnline;

  UserPostModel(
      {required this.profileUrl,
      required this.name,
      required this.headline,
      required this.isVideoPost,
      required this.description,
      required this.video,
      required this.image,
      required this.comments,
      required this.likes,
      required this.tags,
      required this.isOnline});
}

class Post {
  int id;
  String titre;
  String description;
  String date;
  int? region;
  bool like;
  int? totallike;
  List<Comment>? comment;
  Post({
    required this.id,
    required this.titre,
    required this.description,
    required this.date,
    this.region,
    required this.like,
    this.totallike,
    this.comment,
  });

  Post copyWith({
    int? id,
    String? titre,
    String? description,
    String? date,
    int? region,
    bool? like,
    int? totallike,
    List<Comment>? comment,
  }) {
    return Post(
      id: id ?? this.id,
      titre: titre ?? this.titre,
      description: description ?? this.description,
      date: date ?? this.date,
      region: region ?? this.region,
      like: like ?? this.like,
      totallike: totallike ?? this.totallike,
      comment: comment ?? this.comment,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'titre': titre});
    result.addAll({'description': description});
    result.addAll({'date': date});
    if (region != null) {
      result.addAll({'region': region});
    }
    result.addAll({'like': like});
    if (totallike != null) {
      result.addAll({'totallike': totallike});
    }
    if (comment != null) {
      result.addAll({'comment': comment!.map((x) => x.toMap()).toList()});
    }

    return result;
  }

  factory Post.fromMap(Map<String, dynamic> map) {
    return Post(
      id: map['id']?.toInt() ?? 0,
      titre: map['titre'] ?? '',
      description: map['description'] ?? '',
      date: map['date'] ?? '',
      region: map['region']?.toInt(),
      like: map['like'] ?? false,
      totallike: map['totallike']?.toInt(),
      comment: map['comment'] != null
          ? List<Comment>.from(map['comment']?.map((x) => Comment.fromMap(x)))
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Post.fromJson(String source) => Post.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Post(id: $id, titre: $titre, description: $description, date: $date, region: $region, like: $like, totallike: $totallike, comment: $comment)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Post &&
        other.id == id &&
        other.titre == titre &&
        other.description == description &&
        other.date == date &&
        other.region == region &&
        other.like == like &&
        other.totallike == totallike &&
        listEquals(other.comment, comment);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        titre.hashCode ^
        description.hashCode ^
        date.hashCode ^
        region.hashCode ^
        like.hashCode ^
        totallike.hashCode ^
        comment.hashCode;
  }
}

class Comment {
  int? id;
  String? titre;
  String? time;
  User? user;
  Post? post;
  List<Reply> reply;
  Comment({
    required this.id,
    required this.titre,
    required this.time,
    required this.user,
    required this.post,
    required this.reply,
  });

  Comment copyWith({
    int? id,
    String? titre,
    String? time,
    User? user,
    Post? post,
    List<Reply>? reply,
  }) {
    return Comment(
      id: id ?? this.id,
      titre: titre ?? this.titre,
      time: time ?? this.time,
      user: user ?? this.user,
      post: post ?? this.post,
      reply: reply ?? this.reply,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    if (id != null) {
      result.addAll({'id': id});
    }
    if (titre != null) {
      result.addAll({'titre': titre});
    }
    if (time != null) {
      result.addAll({'time': time});
    }
    if (user != null) {
      result.addAll({'user': user!.toMap()});
    }
    if (post != null) {
      result.addAll({'post': post!.toMap()});
    }
    result.addAll({'reply': reply.map((x) => x.toMap()).toList()});

    return result;
  }

  factory Comment.fromMap(Map<String, dynamic> map) {
    return Comment(
      id: map['id']?.toInt(),
      titre: map['titre'],
      time: map['time'],
      user: map['user'] != null ? User.fromMap(map['user']) : null,
      post: map['post'] != null ? Post.fromMap(map['post']) : null,
      reply: List<Reply>.from(map['reply']?.map((x) => Reply.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory Comment.fromJson(String source) =>
      Comment.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Comment(id: $id, titre: $titre, time: $time, user: $user, post: $post, reply: $reply)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Comment &&
        other.id == id &&
        other.titre == titre &&
        other.time == time &&
        other.user == user &&
        other.post == post &&
        listEquals(other.reply, reply);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        titre.hashCode ^
        time.hashCode ^
        user.hashCode ^
        post.hashCode ^
        reply.hashCode;
  }
}

class User {
  int id;
  String password;
  String username;
  String email;

  User({
    required this.id,
    required this.password,
    required this.username,
    required this.email,
  });

  User copyWith({
    int? id,
    String? password,
    String? username,
    String? email,
  }) {
    return User(
      id: id ?? this.id,
      password: password ?? this.password,
      username: username ?? this.username,
      email: email ?? this.email,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'password': password});
    result.addAll({'username': username});
    result.addAll({'email': email});

    return result;
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id']?.toInt() ?? 0,
      password: map['password'] ?? '',
      username: map['username'] ?? '',
      email: map['email'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  @override
  String toString() {
    return 'User(id: $id, password: $password, username: $username, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is User &&
        other.id == id &&
        other.password == password &&
        other.username == username &&
        other.email == email;
  }

  @override
  int get hashCode {
    return id.hashCode ^ password.hashCode ^ username.hashCode ^ email.hashCode;
  }
}

class Reply {
  int id;
  String titre;
  String time;
  int user;
  int comment;
  Reply({
    required this.id,
    required this.titre,
    required this.time,
    required this.user,
    required this.comment,
  });

  Reply copyWith({
    int? id,
    String? titre,
    String? time,
    int? user,
    int? comment,
  }) {
    return Reply(
      id: id ?? this.id,
      titre: titre ?? this.titre,
      time: time ?? this.time,
      user: user ?? this.user,
      comment: comment ?? this.comment,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'titre': titre});
    result.addAll({'time': time});
    result.addAll({'user': user});
    result.addAll({'comment': comment});

    return result;
  }

  factory Reply.fromMap(Map<String, dynamic> map) {
    return Reply(
      id: map['id'],
      titre: map['titre'],
      time: map['time'],
      user: map['user'],
      comment: map['comment'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Reply.fromJson(String source) => Reply.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Reply(id: $id, titre: $titre, time: $time, user: $user, comment: $comment)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Reply &&
        other.id == id &&
        other.titre == titre &&
        other.time == time &&
        other.user == user &&
        other.comment == comment;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        titre.hashCode ^
        time.hashCode ^
        user.hashCode ^
        comment.hashCode;
  }
}
