import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:navnews_app/controller/news_controller.dart';
import 'package:navnews_app/models/news_model.dart';
import 'package:navnews_app/widgets/drawer.dart';
import 'package:navnews_app/widgets/news_card.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    NewsModel news = ref.watch(newsProvider).newsModel;
    bool isLoading = ref.watch(newsProvider).isLoading;
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          height: 45,
          child: TextField(
            onChanged: (value){
               if (value.isNotEmpty) {
                ref.read(newsProvider.notifier).loadSearchedNews(value);
              } else {
                ref.read(newsProvider.notifier).loadNews();
              }
            },
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              alignLabelWithHint: true,
              hintText: "Search news",
              suffixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(11),
                borderSide: BorderSide.none
              )
            ),
          ),
        ),
        elevation: 5,
      ),
      drawer: customDrawer(context,ref),
      body:Column(
         children:[
          const SizedBox(
            height: 10,
          ),
          isLoading ?
              SizedBox(
                height: MediaQuery.of(context).size.height /2,
                child: const Center(
                  child: CircularProgressIndicator(),
                ),
              ):  Expanded(
                child: ListView.builder(
                  itemCount: news.articles!.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return NewsCard(article: news.articles![index]);
                  },
                ),
              )
              
         ]
      ),
    );

  }
}
