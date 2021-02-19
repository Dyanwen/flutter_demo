import 'package:flutter/material.dart';
import 'package:flutter_application/util/struct/artical_summary_struct.dart';
import 'package:flutter_application/util/struct/user_info_struct.dart';
import 'package:flutter_application/widgets/home_page/artical_bottom_bar.dart';
import 'package:flutter_application/widgets/home_page/article_like_bar.dart';
import 'package:flutter_application/widgets/home_page/artical_summary.dart';

/// 此为帖子描述类，包括了帖子UI中的所有元素
class ArticleCard extends StatelessWidget {
  /// 传入的用户信息
  final UserInfoStruct userInfo;

  /// 传入的帖子信息
  final ArticleSummaryStruct articleInfo;

  /// 构造函数
  const ArticleCard({Key key, this.userInfo, this.articleInfo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ArticleSummary(
            title: articleInfo.title,
            summary: articleInfo.summary,
            articleImage: articleInfo.articleImage),
        Row(
          children: <Widget>[
            ArticleBottomBar(
                nickname: userInfo.nickname,
                headerImage: userInfo.headerImage,
                commentNum: articleInfo.commentNum),
            ArticleLikeBar(likeNum: articleInfo.likeNum),
          ],
        ),
      ],
    );
  }
}