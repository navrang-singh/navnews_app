
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:navnews_app/constants/constant.dart';
import 'package:navnews_app/models/news_model.dart';
import 'package:navnews_app/widgets/web_view.dart';

class NewsCard extends ConsumerWidget {
  final Articles article;
  const NewsCard({ Key? key, required this.article }) : super(key: key);

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return InkWell(
      child: Container(
        padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
            height: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: CachedNetworkImage(
                    imageUrl: article.urlToImage == null ? 
                    AppContanst.imageNotFound : article.urlToImage.toString(),
                    errorWidget: (context, string, _) {
                      return const Icon(Icons.error);
                    },
                    width: 130,
                    height: 130,
                    fit: BoxFit.cover,
                  )
                ),
                const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      article.title.toString(),
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  )
              ],
            ),
      ),
      onTap:(){
         Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CustomWebView(url: article.url!,ref:ref)),
        );
      }
    );
  }
}