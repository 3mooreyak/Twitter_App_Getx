import 'package:get/get.dart';
import '../M/posts-model.dart';
import '../M/tweets-data.dart';
class HomePageController extends GetxController {
 List<dynamic> tweets = [
  Post(
    UserName: 'Zoro',
    IdName: '@Zoro-_-',
    Text: 'Iam strong',
    Images: 'assets/images/zoro.jpeg',
    ImageProfile: 'assets/images/zoro.jpeg',
    isFavorite: false,
    isComment: false,
    isRetweet: false,
    isShare: false,
  ),
  Post(
    UserName: 'Luffy',
    IdName: '@Luffy-_-',
    Text: 'iam king',
    Images: 'assets/images/luffy.jpeg',
    ImageProfile: 'assets/images/luffy.jpeg',
    isFavorite: false,
    isComment: false,
    isRetweet: false,
    isShare: false,
  ),
  Post(
    UserName: 'Nika',
    IdName: '@Nika-_-',
    Text: 'Iam king Pirates',
    Images: 'assets/images/nika.jpeg',
    ImageProfile: 'assets/images/nika.jpeg',
    isFavorite: false,
    isComment: false,
    isRetweet: false,
    isShare: false,
  ),
  Post(
    UserName: 'Shanks',
    IdName: '@Shanks-_-',
    Text: 'Iam teatcher',
    Images: 'assets/images/shanks.jpeg',
    ImageProfile: 'assets/images/shanks.jpeg',
    isFavorite: false,
    isComment: false,
    isRetweet: false,
    isShare: false,
  ),
  Post(
    UserName: 'Sir',
    IdName: '@Sir-_-',
    Text: 'Iam A sir',
    Images: 'assets/images/sir.jpeg',
    ImageProfile: 'assets/images/sir.jpeg',
    isFavorite: false,
    isComment: false,
    isRetweet: false,
    isShare: false,
  ),
  Post(
    UserName: 'Sanjy',
    IdName: '@Sanjy-_-',
    Text: 'Iam A Prince',
    Images: 'assets/images/sanjy.jpeg',
    ImageProfile: 'assets/images/sanjy.jpeg',
    isFavorite: false,
    isComment: false,
    isRetweet: false,
    isShare: false,
  ),
].obs;
  int currentPageIndex = 0;
  bool toggel = false;
}
