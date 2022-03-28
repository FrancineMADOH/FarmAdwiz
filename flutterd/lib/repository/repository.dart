import 'package:flutterd/model/user_post_model.dart';
import '../model/company_model.dart';
import '../model/group_model.dart';
import '../model/user_model.dart';

class FakeRepository{
  static final List<UserPostModel> postList = [
    UserPostModel(
      name: "francine",
      profileUrl: "assets/1.png",
      headline: "CIO",
      tags: "developpeur flutter/ odoo erp",
      description: "mobile developer ",
      isVideoPost: false,
      comments: " 100",
      video: "",
      isOnline: false,
      image: "assets/1.png",
      likes: "900M"

    ),
    UserPostModel(
        name: "mr stephane",
        profileUrl: "assets/profile.jpg",
        headline: "CIO",
        tags: "developpeur flutter/ odoo erp",
        description: "Logo Designer | Freelancer",
        isVideoPost: false,
        comments: " 100",
        video: "",
        isOnline: false,
        image: "assets/2.jpg",
        likes: "200k"
    ),
    UserPostModel(
        name: "seraph",
        profileUrl: "assets/1.png",
        headline: "CIO",
        tags: "#datascience #machinelearning #programming #python #joke",
        description: "The world famous football player Sadio Mane of Senegal (West Africa), whose income in Indian rupees is around Rs. 1 crore 40 lacs per week, was seen in many places with a broken mobile phone. In an interview when asked about it, he said, I'll get it fixed. When asked, Why you are not buying a new one? He said, I could buy thousands of it, 10s Ferraris, couple of Jet Planes, Diamond watches that I can buy, but why do I need all of these? I saw poverty, so I couldn't learn, I built schools so that people could learn, I didn't have shoes, I played without shoes, I didn't have good clothes, I didn't have food. I have so much today that I want to share it with my people instead of showing off.Huge respect for him! We all must spend atleast some portion of our excess incomes in people who are deserving and can't even buy necessities.",
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