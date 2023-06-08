import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/C/home-page-controller.dart';
import 'package:getx_project/V/posts-view.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomePageController homePageController = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 80,
        title: homePageController.currentPageIndex >= 4
            ? Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      homePageController.toggel = true;
                    });
                  },
                  child: const Text('متابعة ',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 35),
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: 27,
                    height: 27,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      homePageController.toggel = false;
                    });
                  },
                  child: const Text(
                    'لك  ',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ),
              ])
            : const SizedBox(),
        actions: [
          InkWell(
            onTap: () {
              // Get.to(Profile());
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const Profile()),
              // );
            },
            child: Padding(
                padding: EdgeInsets.only(bottom: 35),
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/sanjy.jpeg',
                  ),
                  radius: 13,
                )),
          )
        ],
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
        onDestinationSelected: (int index) {
          homePageController.currentPageIndex = index;
        },
        selectedIndex: homePageController.currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          NavigationDestination(
            icon: Icon(Icons.notifications),
            label: 'notifications',
          ),
          NavigationDestination(
            icon: Icon(Icons.mic),
            label: 'Live Chat',
          ),
          NavigationDestination(
            icon: Icon(Icons.search),
            label: 'search',
          ),
          NavigationDestination(
            icon: Icon(Icons.mail),
            label: 'massage',
          ),
        ],
      ),
      body: <Widget>[
        Container(
          child: homePageController.toggel ? const Text('data') : TweetScreen(),
        ),
        Container(
          child: Text('dvvfdgdf'),
          // child: const massage(),
        ),
        Container(
          child: Text('jgfyj'),

          // child: const notifications(),
        ),
        Container(
          child: Text('dvvfdgdf'),

          // child: const LiveChat(),
        ),
        Container(
          child: Text('dvvfdgdf'),

          // child: const search(),
        ),
      ][homePageController.currentPageIndex],
    );
  }
}
