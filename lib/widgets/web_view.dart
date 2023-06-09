
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:navnews_app/controller/news_controller.dart';
import 'package:webview_flutter/webview_flutter.dart';


class CustomWebView extends StatefulWidget {
  final String? url;
  final WidgetRef ref;
  const CustomWebView({super.key,required this.url, required this.ref});

  @override
  State<CustomWebView> createState() => _CustomWebViewState();
}

class _CustomWebViewState extends State<CustomWebView> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    // print(widget.url);
    controller = WebViewController()
      ..loadRequest(
        Uri.parse(widget.url??"https://news.google.com/home"),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
        // leading: IconButton(onPressed: (){}, icon: const Icon(Icons.menu)),
        title: SizedBox(
          height: 45,
          child: TextField(
            onChanged: (value){
               if (value.isNotEmpty) {
                widget.ref.read(newsProvider.notifier).loadSearchedNews(value);
              } else {
                widget.ref.read(newsProvider.notifier).loadNews();
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
      body: WebViewWidget(
        controller: controller,
      ),

  );
  }
}
