import 'package:dio/dio.dart';
import 'package:navnews_app/constants/constant.dart';

class NewsService {

  // ignore: non_constant_identifier_names
  String API_KEY = AppContanst.API_KEY;
   final Dio _dio = Dio(
    BaseOptions(
      baseUrl: AppContanst.baseUrl,
      responseType: ResponseType.json
    )
  );

  fetchNews() async {

    var response = await _dio.get('v2/top-headlines?country=in&language=en&apiKey=$API_KEY');
    // String data = await rootBundle.loadString('assets/a.json');
    // var jsonResult = json.decode(data);

    // return jsonResult;
    // print("request done !!");
    return response.data;

  }
  
  fetchNewsBySearching(String title) async {

    var response = await _dio.get('v2/everything?q=$title&language=en&apiKey=094abddfda1944fb87d868677f3005ee');
    return response.data;
  }

  fetchNewsByCountry(String country) async {
    AppContanst.currcountry = country;
    Response response;
    if(AppContanst.currcategory != ""){
      String cat = AppContanst.currcategory;
      response = await _dio.get("v2/top-headlines?country=$country&language=en&category=$cat&apiKey=$API_KEY");
    }
    else{
      response = await _dio.get("v2/top-headlines?country=$country&language=en&apiKey=$API_KEY");
    }
    return response.data;
  }

  fetchNewsByCategory(String category) async {
    AppContanst.currcategory = category;
    Response response;
    if(AppContanst.currcountry != ""){
      String cat = AppContanst.currcountry;
      response = await _dio.get("v2/top-headlines?country=$cat&language=en&category=$category&apiKey=$API_KEY");
    }
    else{
      response = await _dio.get("v2/top-headlines?category=$category&language=en&apiKey=$API_KEY");
    }
    return response.data;
  }

}