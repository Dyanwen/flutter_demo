
import 'package:flutter/material.dart';
import 'package:flutter_application/util/struct/artical_summary_struct.dart';
import 'package:flutter_application/util/struct/user_info_struct.dart';
import 'package:flutter_application/widgets/common/banner_info.dart';
import 'package:flutter_application/widgets/home_page/artical_card.dart';

/// 首页列表信息
///
/// 展示banner和帖子信息
class HomePage extends StatelessWidget {
  /// banner 地址信息
  final String bannerImage =
      'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fa4.att.hudong.com%2F27%2F67%2F01300000921826141299672233506.jpg&refer=http%3A%2F%2Fa4.att.hudong.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1616308224&t=fba64f57ab892441c38ace3ecaed3c64';

  /// 帖子标题
  final UserInfoStruct userInfo = UserInfoStruct('flutter',
      'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg&refer=http%3A%2F%2Fa0.att.hudong.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1616308224&t=22b43c58338025a1fec1c2541101d981');

  /// 帖子概要描述信息
  final ArticleSummaryStruct articleInfo = ArticleSummaryStruct(
      '你好，教个朋友',
      '我是一个小可爱',
      'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fa0.att.hudong.com%2F52%2F62%2F31300542679117141195629117826.jpg&refer=http%3A%2F%2Fa0.att.hudong.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1616308224&t=7a13be050ead8c4bcf52d454f3a42302',
      20,
      30);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          BannerInfo(bannerImage: bannerImage),
          ArticleCard(
            userInfo: userInfo,
            articleInfo: articleInfo,
          ),
        ],
      ),
    );
  }
}