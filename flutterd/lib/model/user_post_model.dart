import 'dart:convert';

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
  int region;

  Post(
      {required this.id,
      required this.titre,
      required this.description,
      required this.date,
      required this.region});

  Post copyWith({
    int? id,
    String? titre,
    String? description,
    String? date,
    int? region,
  }) {
    return Post(
        id: id ?? this.id,
        titre: titre ?? this.titre,
        description: description ?? this.description,
        date: date ?? this.date,
        region: region ?? this.region);
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'titre': titre,
      'description': description,
      'date': date,
      'region': region,
    };
  }

  factory Post.fromMap(Map<String, dynamic> map) {
    return Post(
      id: map['id'],
      titre: map['titre'],
      description: map['description'],
      date: map['date'],
      region: map['region'],
      //return data;
    );
  }
  String tojson() => json.encode(toMap());
  factory Post.fromJson(String source) => Post.fromMap(json.decode(source));
  @override
  String toString() =>
      'Post(id: $id, titre: $titre, description: $description, date: $date, region: $region)';
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Post &&
        other.id == id &&
        other.titre == titre &&
        other.description == description &&
        other.date == date &&
        other.region == region;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        titre.hashCode ^
        description.hashCode ^
        date.hashCode ^
        region.hashCode;
  }
}
