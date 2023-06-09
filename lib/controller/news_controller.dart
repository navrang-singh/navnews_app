
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:navnews_app/models/news_model.dart';

import '../services/news_service.dart';

part 'news_controller.freezed.dart';


@freezed
class NewsState with _$NewsState {
  const factory NewsState({
    @Default(true) bool isLoading,
    required NewsModel newsModel,
    @Default("in") String currCountry,
    @Default("general") String currCategory,
  }) = _NewsState;

  const NewsState._();
}


class NewsNotifier extends StateNotifier<NewsState> {
  NewsNotifier() : super(NewsState(newsModel: NewsModel(articles: []))){
    loadNews();
  }
  

  loadNews() async {
    state = state.copyWith(isLoading: true);
    final newsResponse = await NewsService().fetchNews();
    final news = NewsModel.fromJson(newsResponse);
    state = state.copyWith(newsModel: news,isLoading: false);
  }
  
  loadSearchedNews(String title) async {
    state = state.copyWith(isLoading: true);
    final newsResponse = await NewsService().fetchNewsBySearching(title);
    final news = NewsModel.fromJson(newsResponse);
    state = state.copyWith(newsModel: news,isLoading: false);
  }

  loadNewsCategory(String category) async {
    state = state.copyWith(isLoading: true);
    final newsResponse = await NewsService().fetchNewsByCategory(category);
    final news = NewsModel.fromJson(newsResponse);
    state = state.copyWith(newsModel: news,isLoading: false,currCategory: category);
  }

  loadNewsCountry(String country) async {
    state = state.copyWith(isLoading: true);
    final newsResponse = await NewsService().fetchNewsByCountry(country);
    final news = NewsModel.fromJson(newsResponse);
    state = state.copyWith(newsModel: news,isLoading: false,currCountry: country);
  }

}

final newsProvider = StateNotifierProvider<NewsNotifier,NewsState>((ref)=> NewsNotifier());