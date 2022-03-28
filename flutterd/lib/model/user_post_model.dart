class UserPostModel{
  final String profileUrl;
  final String name;
  final String headline;
  final bool? isVideoPost;
  final String description;
  final String? video;
  final String image;
  final String comments;
  final String likes;
  final bool isOnline;
  final String tags;

  UserPostModel({required this.profileUrl, required this.name, required this.headline, this.isVideoPost, required this.description, this.video, required this.image, required this.comments, required this.likes, required this.isOnline, required this.tags});
}