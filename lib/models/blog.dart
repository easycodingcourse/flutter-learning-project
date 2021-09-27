class Blog{
  final int _id;
  final int _albumId;
  final String _title;
  final String _url;
  final String _thumbnailUrl;


  Blog(this._id, this._albumId, this._title, this._url, this._thumbnailUrl);

  String get thumbnailUrl => _thumbnailUrl;

  String get url => _url;

  String get title => _title;

  int get albumId => _albumId;

  int get id => _id;
}