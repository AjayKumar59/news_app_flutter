// import 'dart:convert';

// import 'package:http/http.dart' as http;

// import 'model.dart';

// class ApiService {
//   static String baseUrl = 'https://jsonplaceholder.typicode.com';
//   static String usersEndpoint = '/users';
//   static var client = http.Client();
//   static Future<UsersList?> getUsers() async {
//     Map<String, String> requestHeader = {'Content-Type': 'application/json'};

//     var url = Uri.parse("https://jsonplaceholder.typicode.com/users");

//     var res = await client.get(url, headers: requestHeader);
//     if (res.statusCode == 200) {
//       var data = jsonDecode(res.body);
//       return UsersList.fromJson(data);
//     } else {
//       return null;
//     }
//   }
// }

import 'package:http/http.dart' as http;
import 'package:indian_news18/model.dart';

class RemoteService {
  Future<List<News>?> getNews() async {
    Map<String, String> requestHeader = {
      'Content-Type': 'application/json',
      'X-RapidAPI-Key': 'f318e4b896msh97b2ca41c1ff23ep1381f8jsncf6d229fe125',
      'X-RapidAPI-Host': 'indian-news-live.p.rapidapi.com'
    };
    var client = http.Client();

    var uri = Uri.parse('https://indian-news-live.p.rapidapi.com/news');
    var response = await client.get(uri, headers: requestHeader);
    if (response.statusCode == 200) {
      var json = response.body;
      return postFromJson(json);
    }
    return null;
  }
}
