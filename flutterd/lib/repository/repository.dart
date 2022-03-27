import 'package:flutterd/model/user_post_model.dart';
import '../model/company_model.dart';
import '../model/group_model.dart';
import '../model/user_model.dart';

class FakeRepository{
  static final List<UserPostModel> postList = [
    UserPostModel(
      name: "seraph",
      profileUrl: "assets/1.png",
      headline: "CIO",
      tags: "jdjdjdjdjdjdjdj",
      description: "nknkjfdijfkdjj",
      isVideoPost: false,
      comments: " 100",
      video: "",
      isOnline: false,
      image: "assets/1.png",
      likes: "900M"

    ),
    UserPostModel(
        name: "mr stephane",
        profileUrl: "assets/icons/1.png",
        headline: "CIO",
        tags: "jdjdjdjdjdjdjdj",
        description: "nknkjfdijfkdjj",
        isVideoPost: false,
        comments: " 100",
        video: "",
        isOnline: false,
        image: "assets/1.png",
        likes: "200k"
    ),
    UserPostModel(
        name: "francine",
        profileUrl: "assets/1.png",
        headline: "CIO",
        tags: "jdjdjdjdjdjdjdj",
        description: "nknkjfdijfkdjj",
        isVideoPost: false,
        comments: " 100",
        video: "",
        isOnline: false,
        image: "assets/1.png",
        likes: "800k"

    )
  ];
  static final userProfile = UserModel(
      headline: "igenieur agro",
      profileUrl: "assets/1.jpg",
      name: "Francine",
      connections: "1,837",
      viewProfile: "300"
  );

  static final List<GroupModel> recentData = [
    GroupModel("Recent",[
      GroupModel("test 1"),
      GroupModel("test 2"),
      GroupModel("test 3"),
      GroupModel("test 4"),
    ]),
    GroupModel("Groups",[
      GroupModel("semence"),
      GroupModel("agriculture"),
      GroupModel("plante"),
      GroupModel("tomate"),
    ]),
  ];

  static final List<CompanyModel> companyListData=[
    CompanyModel(
      name: "produits agicole",
      description: "plantin",
      profileUrl: "",
    ),
    CompanyModel(
      name: "semence",
      description: "semencier ",
      profileUrl: "assets/1.png",
    ),
    CompanyModel(
      name: "agro",
      description: "produit agricol",
      profileUrl: "assets/1.png",
    ),
  ];
}