import 'dart:convert';

List<News> postFromJson(String str) =>
    List<News>.from(json.decode(str).map((x) => News.fromJson(x)));

String postToJson(List<News> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class News {
  String? _title;
  String? _url;
  String? _img;
  String? _source;

  News({String? title, String? url, String? img, String? source}) {
    if (title != null) {
      this._title = title;
    }
    if (url != null) {
      this._url = url;
    }
    if (img != null) {
      this._img = img;
    }
    if (source != null) {
      this._source = source;
    }
  }

  String? get title => _title;
  set title(String? title) => _title = title;
  String? get url => _url;
  set url(String? url) => _url = url;
  String? get img => _img;
  set img(String? img) => _img = img;
  String? get source => _source;
  set source(String? source) => _source = source;

  News.fromJson(Map<String, dynamic> json) {
    _title = json['title'];
    _url = json['url'];
    _img = json['img'];
    _source = json['source'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this._title;
    data['url'] = this._url;
    data['img'] = this._img;
    data['source'] = this._source;
    return data;
  }
}
