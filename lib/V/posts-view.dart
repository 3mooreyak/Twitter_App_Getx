import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/C/home-page-controller.dart';
import '../M/tweets-data.dart';

class TweetScreen extends StatelessWidget {
   TweetScreen({super.key});
  HomePageController homePageController = Get.put(HomePageController());
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
        ),
        itemCount: homePageController.tweets.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => Posts(
              //               user: tweets[index].UserName,
              //               id: tweets[index].IdName,
              //               image: tweets[index].Images,
              //               text: tweets[index].Text,
              //               profileImage: tweets[index].ImageProfile,
              //               isFavorite: tweets[index].isFavorite,
              //               isComment: tweets[index].isComment,
              //               isShare: tweets[index].isShare,
              //               isRetweet: tweets[index].isRetweet,
              //             )));
            },
            child: Card(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => tweetsProfilePage(
                          //             tweetsProfile: tweets[index].ImageProfile,
                          //           )),
                          // );
                        },
                        child: CircleAvatar(
                          backgroundImage: AssetImage(
                            homePageController.tweets[index].ImageProfile,
                          ),
                          radius: 20,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        homePageController.tweets[index].UserName,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(homePageController.tweets[index].IdName),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          homePageController.tweets[index].Text,
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Image.asset(
                    homePageController.tweets[index].Images,
                    height: 150,
                    width: 350,
                    fit: BoxFit.fill,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Obx(() => IconButton(
                          onPressed: () {
                            homePageController.tweets[index].isComment = !homePageController.tweets[index].isComment;
                            print(homePageController.tweets[index].isComment);
                          },
                          icon: Icon(Icons.comment_outlined,
                              color: homePageController.tweets[index].isComment == false
                                  ? null
                                  : Colors.blue))),

                      // InkWell(
                      //     onTap: () {
                      //       setState(() {
                      //         tweets[index].isComment =
                      //             !tweets[index].isComment;
                      //       });
                      //     },
                      //     child: Icon(Icons.comment_outlined,
                      //         color: tweets[index].isComment == false
                      //             ? null
                      //             : Colors.blue)),
                      GetBuilder<HomePageController>(
                          builder: ((controller) => InkWell(
                              onTap: () {
                                homePageController.tweets[index].isFavorite =
                                    !homePageController.tweets[index].isFavorite;
                              },
                              child: Icon(Icons.restart_alt_outlined,
                                  color: homePageController.tweets[index].isFavorite == false
                                      ? null
                                      : Colors.green)))),
                      InkWell(
                          onTap: () {
                            homePageController.tweets[index].isRetweet = !homePageController.tweets[index].isRetweet;
                          },
                          child: Icon(Icons.favorite_outline,
                              color: homePageController.tweets[index].isRetweet == false
                                  ? null
                                  : Colors.red)),
                      InkWell(
                          onTap: () {
                            homePageController.tweets[index].isShare = !homePageController.tweets[index].isShare;
                          },
                          child: Icon(Icons.share_outlined,
                              color: homePageController.tweets[index].isShare == false
                                  ? null
                                  : Colors.yellow)),
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}
