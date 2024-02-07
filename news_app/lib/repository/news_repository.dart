import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/models/news_channel_headlines_model.dart';

class NewsRepository {
  Future<NewsChannelsHeadlinesModel>  fetchNewsChannelHeadlinesApi() async{
 String url = "https://newsapi.org/v2/top-headlines?country=us&apiKey=9922b69172ae4b419438888702668870";
 final response = await http.get(Uri.parse(url));

if(response.statusCode== 200){
  final body= jsonDecode(response.body);
return NewsChannelsHeadlinesModel.fromJson(body);

}
throw Exception('Error');

} }