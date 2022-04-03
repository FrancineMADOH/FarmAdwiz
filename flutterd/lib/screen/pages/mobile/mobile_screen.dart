import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterd/model/user_post_model.dart';
import 'package:flutterd/repository/repository.dart';
import 'package:flutterd/screen/pages/mobile/widget/common.dart';
import 'package:flutterd/screen/pages/mobile/widget/custom_appBar.dart';
import 'package:flutterd/screen/widgets/style/theme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:http/http.dart' as http;
import 'package:flutterd/urls.dart';

class MobileScreen extends StatefulWidget {
  @override
  _MobileScreenState createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  Client client = http.Client();
  List<Post> posts = [];

  int _currentNavIndex = 0;
  final _post = FakeRepository.postList;
  bool _showAppNavBar = true;
  bool _isScrollDown = false;
  late ScrollController _scrollController;

  @override
  void initState() {
    _retrievePosts();
    super.initState();
    _scrollController = ScrollController();
    _initialScroll();
  }

  _retrievePosts() async {
    var token = '6118c6c03cb38309af84857ee3daabbd2acee325';
    posts = [];
    const String retrieveUrl = 'http://127.0.0.1:8000/api/posts/';
    List response = json.decode((await client.get(Uri.parse(retrieveUrl),
            headers: {'Authorization': 'token $token'}))
        .body);
    response.forEach((element) {
      posts.add(Post.fromMap(element));
    });
    setState(() {});
  }

  void _addPost() {}

  void _initialScroll() {
    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (!_isScrollDown) {
          _isScrollDown = true;
          _hideAppNavBar();
        }
      }
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
        if (_isScrollDown) {
          _isScrollDown = false;
          _showAppNvBar();
          setState(() {});
        }
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
        builder: (BuildContext context, SizingInformation sizingInformation) {
      return Scaffold(
        bottomNavigationBar: _showAppNavBar
            ? Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: sizingInformation.screenSize.height * 0.07,
                decoration: BoxDecoration(
                  color: Colors.white54,
                  border: Border(
                      top: BorderSide(color: Colors.black26, width: 0.80)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        onTap: () {
                          setState(() {
                            _currentNavIndex = 0;
                          });
                        },
                        child: SingleNavBarButton(
                          name: "home",
                          icon: FontAwesomeIcons.home,
                          selectedButton: _currentNavIndex == 0 ? true : false,
                        )),
                    InkWell(
                        onTap: () {
                          setState(() {
                            _currentNavIndex = 1;
                          });
                        },
                        child: SingleNavBarButton(
                          name: "My Network",
                          icon: FontAwesomeIcons.userFriends,
                          selectedButton: _currentNavIndex == 1 ? true : false,
                        )),
                    InkWell(
                        onTap: () {
                          setState(() {
                            _currentNavIndex = 2;
                          });
                        },
                        child: SingleNavBarButton(
                          name: "Post",
                          icon: FontAwesomeIcons.plusCircle,
                          selectedButton: _currentNavIndex == 2 ? true : false,
                        )),
                    InkWell(
                        onTap: () {
                          setState(() {
                            _currentNavIndex = 3;
                          });
                        },
                        child: SingleNavBarButton(
                          name: "Information",
                          icon: FontAwesomeIcons.briefcase,
                          selectedButton: _currentNavIndex == 3 ? true : false,
                        )),
                    InkWell(
                        onTap: () {
                          setState(() {
                            _currentNavIndex = 4;
                          });
                        },
                        child: SingleNavBarButton(
                          name: "Notification",
                          icon: FontAwesomeIcons.solidBell,
                          selectedButton: _currentNavIndex == 4 ? true : false,
                        )),
                  ],
                ))
            : Container(
                height: 0.0,
                width: 0.0,
              ),
        body: Container(
          color: Colors.black12,
          child: Column(children: [
            _showAppNavBar
                ? CustomAppBar(
                    sizingInformation: sizingInformation,
                  )
                : Container(
                    height: 0.0,
                    width: 0.0,
                  ),
            _listPostWidget(sizingInformation),
          ]),
        ),
      );
    });
  }

  Widget _listPostWidget(SizingInformation sizingInformation) {
    return Expanded(
      child: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: ListView.builder(
          controller: _scrollController,
          itemCount: posts.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
                padding: EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 15,
                ),
                margin: EdgeInsets.only(bottom: 0.0, top: 8),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                        top: BorderSide(color: Colors.black54, width: 0.50),
                        bottom:
                            BorderSide(color: Colors.black54, width: 0.50))),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40))),
                          child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40)),
                              child: Image.asset(_post[index].profileUrl)),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Container(
                            width: sizingInformation.screenSize.width / 1.20,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  posts[index].titre,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
//titre
                                Container(
                                  width:
                                      sizingInformation.screenSize.width / 1.24,
                                  child: Text(
                                    posts[index].titre,
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black54,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ))
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            _post[index].description,
                            style: TextStyle(fontSize: 14),
                          ),
                          Text(
                            _post[index].tags,
                            style: TextStyle(color: blueColor),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: sizingInformation.screenSize.width,
                            child: Image.asset(_post[index].image,
                                fit: BoxFit.contain),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      width: 25,
                                      height: 25,
                                      child: Image.asset(
                                          'assets/icons/like_icon.png'),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      posts[index].titre,
                                      style: TextStyle(fontSize: 12),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Text(_post[index].comments),
                                    Text(" comments"),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Divider(
                            thickness: 0.50,
                            color: Colors.black26,
                          ),
                          _rowButton(),
                        ],
                      ),
                    ),
                  ],
                ));
          },
        ),
      ),
    );
  }

  void _hideAppNavBar() {
    setState(() {
      _showAppNavBar = false;
    });
  }

  void _showAppNvBar() {
    setState(() {
      _showAppNavBar = true;
    });
  }

  Widget _rowButton() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  width: 30,
                  height: 30,
                  child: Image.asset('assets/icons/like_icon_white.png'),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Likes",
                  style: TextStyle(fontSize: 12, color: Colors.black),
                )
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Container(
                  width: 30,
                  height: 30,
                  child: Image.asset('assets/icons/comment_icon.png'),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Comments",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Container(
                  width: 30,
                  height: 30,
                  child: Image.asset('assets/icons/share_icon.png'),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "share",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
