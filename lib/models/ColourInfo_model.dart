class ColourInfoModel {
  ColourInfoModel({
    int? id,
    String? title,
    String? userName,
    int? numViews,
    int? numVotes,
    int? numComments,
    int? numHearts,
    int? rank,
    String? dateCreated,
    List<String>? colors,
    String? description,
    String? url,
    String? imageUrl,
    String? badgeUrl,
    String? apiUrl,
    Template? template,
  }) {
    _id = id;
    _title = title;
    _userName = userName;
    _numViews = numViews;
    _numVotes = numVotes;
    _numComments = numComments;
    _numHearts = numHearts;
    _rank = rank;
    _dateCreated = dateCreated;
    _colors = colors;
    _description = description;
    _url = url;
    _imageUrl = imageUrl;
    _badgeUrl = badgeUrl;
    _apiUrl = apiUrl;
    _template = template;
  }

  ColourInfoModel.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
    _userName = json['userName'];
    _numViews = json['numViews'];
    _numVotes = json['numVotes'];
    _numComments = json['numComments'];
    _numHearts = json['numHearts'];
    _rank = json['rank'];
    _dateCreated = json['dateCreated'];
    _colors = json['colors'] != null ? json['colors'].cast<String>() : [];
    _description = json['description'];
    _url = json['url'];
    _imageUrl = json['imageUrl'];
    _badgeUrl = json['badgeUrl'];
    _apiUrl = json['apiUrl'];
    _template =
        json['template'] != null ? Template.fromJson(json['template']) : null;
  }
  int? _id;
  String? _title;
  String? _userName;
  int? _numViews;
  int? _numVotes;
  int? _numComments;
  int? _numHearts;
  int? _rank;
  String? _dateCreated;
  List<String>? _colors;
  String? _description;
  String? _url;
  String? _imageUrl;
  String? _badgeUrl;
  String? _apiUrl;
  Template? _template;
  ColourInfoModel copyWith({
    int? id,
    String? title,
    String? userName,
    int? numViews,
    int? numVotes,
    int? numComments,
    int? numHearts,
    int? rank,
    String? dateCreated,
    List<String>? colors,
    String? description,
    String? url,
    String? imageUrl,
    String? badgeUrl,
    String? apiUrl,
    Template? template,
  }) =>
      ColourInfoModel(
        id: id ?? _id,
        title: title ?? _title,
        userName: userName ?? _userName,
        numViews: numViews ?? _numViews,
        numVotes: numVotes ?? _numVotes,
        numComments: numComments ?? _numComments,
        numHearts: numHearts ?? _numHearts,
        rank: rank ?? _rank,
        dateCreated: dateCreated ?? _dateCreated,
        colors: colors ?? _colors,
        description: description ?? _description,
        url: url ?? _url,
        imageUrl: imageUrl ?? _imageUrl,
        badgeUrl: badgeUrl ?? _badgeUrl,
        apiUrl: apiUrl ?? _apiUrl,
        template: template ?? _template,
      );
  int? get id => _id;
  String? get title => _title;
  String? get userName => _userName;
  int? get numViews => _numViews;
  int? get numVotes => _numVotes;
  int? get numComments => _numComments;
  int? get numHearts => _numHearts;
  int? get rank => _rank;
  String? get dateCreated => _dateCreated;
  List<String>? get colors => _colors;
  String? get description => _description;
  String? get url => _url;
  String? get imageUrl => _imageUrl;
  String? get badgeUrl => _badgeUrl;
  String? get apiUrl => _apiUrl;
  Template? get template => _template;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    map['userName'] = _userName;
    map['numViews'] = _numViews;
    map['numVotes'] = _numVotes;
    map['numComments'] = _numComments;
    map['numHearts'] = _numHearts;
    map['rank'] = _rank;
    map['dateCreated'] = _dateCreated;
    map['colors'] = _colors;
    map['description'] = _description;
    map['url'] = _url;
    map['imageUrl'] = _imageUrl;
    map['badgeUrl'] = _badgeUrl;
    map['apiUrl'] = _apiUrl;
    if (_template != null) {
      map['template'] = _template?.toJson();
    }
    return map;
  }
}

class Template {
  Template({
    String? title,
    String? url,
    Author? author,
  }) {
    _title = title;
    _url = url;
    _author = author;
  }

  Template.fromJson(dynamic json) {
    _title = json['title'];
    _url = json['url'];
    _author = json['author'] != null ? Author.fromJson(json['author']) : null;
  }
  String? _title;
  String? _url;
  Author? _author;
  Template copyWith({
    String? title,
    String? url,
    Author? author,
  }) =>
      Template(
        title: title ?? _title,
        url: url ?? _url,
        author: author ?? _author,
      );
  String? get title => _title;
  String? get url => _url;
  Author? get author => _author;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = _title;
    map['url'] = _url;
    if (_author != null) {
      map['author'] = _author?.toJson();
    }
    return map;
  }
}

class Author {
  Author({
    String? userName,
    String? url,
  }) {
    _userName = userName;
    _url = url;
  }

  Author.fromJson(dynamic json) {
    _userName = json['userName'];
    _url = json['url'];
  }
  String? _userName;
  String? _url;
  Author copyWith({
    String? userName,
    String? url,
  }) =>
      Author(
        userName: userName ?? _userName,
        url: url ?? _url,
      );
  String? get userName => _userName;
  String? get url => _url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['userName'] = _userName;
    map['url'] = _url;
    return map;
  }
}
