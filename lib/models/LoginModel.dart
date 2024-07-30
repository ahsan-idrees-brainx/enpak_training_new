/// data : {"user":{"_id":"656ef38b29a0e103d84702e7","name":"jon","username":"jon","email":"jon@gmail.com","verifiedEmail":"","idImage":"","verificationStatus":"","isVarified":false,"gender":"","profession":"","dob":null,"intro":"updated intro","avatar":"","blockedUsers":[],"blockedBy":[],"authProvider":"Default","password":"$2a$12$BE5Xjk9QVF2un7IF0jeoZe4CoLr8TmnGwt382l4/QyjmicHD8wWti","firebaseTokens":[{"platform":"someplatform","firebaseToken":"saisjasioja","_id":"6655c9d1c9f75402e9883973"}],"createdAt":"2023-12-05T09:55:23.272Z","updatedAt":"2024-05-28T12:10:57.854Z","__v":0},"countData":{"_id":null,"followersCount":0,"followingCount":0,"unreadCount":8},"token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY1NmVmMzhiMjlhMGUxMDNkODQ3MDJlNyIsImlzVmFyaWZpZWQiOmZhbHNlLCJpYXQiOjE3MjIzMjI5MTN9.qOhmYNjiXM45bxMf1S-EdjzAltywu_LU2aNyeIBqORk"}

class LoginModel {
  LoginModel({
      Data data,}){
    _data = data;
}

  LoginModel.fromJson(dynamic json) {
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  Data _data;
LoginModel copyWith({  Data data,
}) => LoginModel(  data: data ?? _data,
);
  Data get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_data != null) {
      map['data'] = _data.toJson();
    }
    return map;
  }

}

/// user : {"_id":"656ef38b29a0e103d84702e7","name":"jon","username":"jon","email":"jon@gmail.com","verifiedEmail":"","idImage":"","verificationStatus":"","isVarified":false,"gender":"","profession":"","dob":null,"intro":"updated intro","avatar":"","blockedUsers":[],"blockedBy":[],"authProvider":"Default","password":"$2a$12$BE5Xjk9QVF2un7IF0jeoZe4CoLr8TmnGwt382l4/QyjmicHD8wWti","firebaseTokens":[{"platform":"someplatform","firebaseToken":"saisjasioja","_id":"6655c9d1c9f75402e9883973"}],"createdAt":"2023-12-05T09:55:23.272Z","updatedAt":"2024-05-28T12:10:57.854Z","__v":0}
/// countData : {"_id":null,"followersCount":0,"followingCount":0,"unreadCount":8}
/// token : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY1NmVmMzhiMjlhMGUxMDNkODQ3MDJlNyIsImlzVmFyaWZpZWQiOmZhbHNlLCJpYXQiOjE3MjIzMjI5MTN9.qOhmYNjiXM45bxMf1S-EdjzAltywu_LU2aNyeIBqORk"

class Data {
  Data({
      User user, 
      CountData countData, 
      String token,}){
    _user = user;
    _countData = countData;
    _token = token;
}

  Data.fromJson(dynamic json) {
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
    _countData = json['countData'] != null ? CountData.fromJson(json['countData']) : null;
    _token = json['token'];
  }
  User _user;
  CountData _countData;
  String _token;
Data copyWith({  User user,
  CountData countData,
  String token,
}) => Data(  user: user ?? _user,
  countData: countData ?? _countData,
  token: token ?? _token,
);
  User get user => _user;
  CountData get countData => _countData;
  String get token => _token;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_user != null) {
      map['user'] = _user.toJson();
    }
    if (_countData != null) {
      map['countData'] = _countData.toJson();
    }
    map['token'] = _token;
    return map;
  }

}

/// _id : null
/// followersCount : 0
/// followingCount : 0
/// unreadCount : 8

class CountData {
  CountData({
      dynamic id, 
      num followersCount, 
      num followingCount, 
      num unreadCount,}){
    _id = id;
    _followersCount = followersCount;
    _followingCount = followingCount;
    _unreadCount = unreadCount;
}

  CountData.fromJson(dynamic json) {
    _id = json['_id'];
    _followersCount = json['followersCount'];
    _followingCount = json['followingCount'];
    _unreadCount = json['unreadCount'];
  }
  dynamic _id;
  num _followersCount;
  num _followingCount;
  num _unreadCount;
CountData copyWith({  dynamic id,
  num followersCount,
  num followingCount,
  num unreadCount,
}) => CountData(  id: id ?? _id,
  followersCount: followersCount ?? _followersCount,
  followingCount: followingCount ?? _followingCount,
  unreadCount: unreadCount ?? _unreadCount,
);
  dynamic get id => _id;
  num get followersCount => _followersCount;
  num get followingCount => _followingCount;
  num get unreadCount => _unreadCount;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['followersCount'] = _followersCount;
    map['followingCount'] = _followingCount;
    map['unreadCount'] = _unreadCount;
    return map;
  }

}

/// _id : "656ef38b29a0e103d84702e7"
/// name : "jon"
/// username : "jon"
/// email : "jon@gmail.com"
/// verifiedEmail : ""
/// idImage : ""
/// verificationStatus : ""
/// isVarified : false
/// gender : ""
/// profession : ""
/// dob : null
/// intro : "updated intro"
/// avatar : ""
/// blockedUsers : []
/// blockedBy : []
/// authProvider : "Default"
/// password : "$2a$12$BE5Xjk9QVF2un7IF0jeoZe4CoLr8TmnGwt382l4/QyjmicHD8wWti"
/// firebaseTokens : [{"platform":"someplatform","firebaseToken":"saisjasioja","_id":"6655c9d1c9f75402e9883973"}]
/// createdAt : "2023-12-05T09:55:23.272Z"
/// updatedAt : "2024-05-28T12:10:57.854Z"
/// __v : 0

class User {
  User({
      String id, 
      String name, 
      String username, 
      String email, 
      String verifiedEmail, 
      String idImage, 
      String verificationStatus, 
      bool isVarified, 
      String gender, 
      String profession, 
      dynamic dob, 
      String intro, 
      String avatar, 
      List<dynamic> blockedUsers, 
      List<dynamic> blockedBy, 
      String authProvider, 
      String password, 
      List<FirebaseTokens> firebaseTokens, 
      String createdAt, 
      String updatedAt, 
      num v,}){
    _id = id;
    _name = name;
    _username = username;
    _email = email;
    _verifiedEmail = verifiedEmail;
    _idImage = idImage;
    _verificationStatus = verificationStatus;
    _isVarified = isVarified;
    _gender = gender;
    _profession = profession;
    _dob = dob;
    _intro = intro;
    _avatar = avatar;
    _blockedUsers = blockedUsers;
    _blockedBy = blockedBy;
    _authProvider = authProvider;
    _password = password;
    _firebaseTokens = firebaseTokens;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _v = v;
}

  User.fromJson(dynamic json) {
    _id = json['_id'];
    _name = json['name'];
    _username = json['username'];
    _email = json['email'];
    _verifiedEmail = json['verifiedEmail'];
    _idImage = json['idImage'];
    _verificationStatus = json['verificationStatus'];
    _isVarified = json['isVarified'];
    _gender = json['gender'];
    _profession = json['profession'];
    _dob = json['dob'];
    _intro = json['intro'];
    _avatar = json['avatar'];
    if (json['blockedUsers'] != null) {
      _blockedUsers = [];
      json['blockedUsers'].forEach((v) {
        _blockedUsers.add(Dynamic.fromJson(v));
      });
    }
    if (json['blockedBy'] != null) {
      _blockedBy = [];
      json['blockedBy'].forEach((v) {
        _blockedBy.add(Dynamic.fromJson(v));
      });
    }
    _authProvider = json['authProvider'];
    _password = json['password'];
    if (json['firebaseTokens'] != null) {
      _firebaseTokens = [];
      json['firebaseTokens'].forEach((v) {
        _firebaseTokens.add(FirebaseTokens.fromJson(v));
      });
    }
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _v = json['__v'];
  }
  String _id;
  String _name;
  String _username;
  String _email;
  String _verifiedEmail;
  String _idImage;
  String _verificationStatus;
  bool _isVarified;
  String _gender;
  String _profession;
  dynamic _dob;
  String _intro;
  String _avatar;
  List<dynamic> _blockedUsers;
  List<dynamic> _blockedBy;
  String _authProvider;
  String _password;
  List<FirebaseTokens> _firebaseTokens;
  String _createdAt;
  String _updatedAt;
  num _v;
User copyWith({  String id,
  String name,
  String username,
  String email,
  String verifiedEmail,
  String idImage,
  String verificationStatus,
  bool isVarified,
  String gender,
  String profession,
  dynamic dob,
  String intro,
  String avatar,
  List<dynamic> blockedUsers,
  List<dynamic> blockedBy,
  String authProvider,
  String password,
  List<FirebaseTokens> firebaseTokens,
  String createdAt,
  String updatedAt,
  num v,
}) => User(  id: id ?? _id,
  name: name ?? _name,
  username: username ?? _username,
  email: email ?? _email,
  verifiedEmail: verifiedEmail ?? _verifiedEmail,
  idImage: idImage ?? _idImage,
  verificationStatus: verificationStatus ?? _verificationStatus,
  isVarified: isVarified ?? _isVarified,
  gender: gender ?? _gender,
  profession: profession ?? _profession,
  dob: dob ?? _dob,
  intro: intro ?? _intro,
  avatar: avatar ?? _avatar,
  blockedUsers: blockedUsers ?? _blockedUsers,
  blockedBy: blockedBy ?? _blockedBy,
  authProvider: authProvider ?? _authProvider,
  password: password ?? _password,
  firebaseTokens: firebaseTokens ?? _firebaseTokens,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  v: v ?? _v,
);
  String get id => _id;
  String get name => _name;
  String get username => _username;
  String get email => _email;
  String get verifiedEmail => _verifiedEmail;
  String get idImage => _idImage;
  String get verificationStatus => _verificationStatus;
  bool get isVarified => _isVarified;
  String get gender => _gender;
  String get profession => _profession;
  dynamic get dob => _dob;
  String get intro => _intro;
  String get avatar => _avatar;
  List<dynamic> get blockedUsers => _blockedUsers;
  List<dynamic> get blockedBy => _blockedBy;
  String get authProvider => _authProvider;
  String get password => _password;
  List<FirebaseTokens> get firebaseTokens => _firebaseTokens;
  String get createdAt => _createdAt;
  String get updatedAt => _updatedAt;
  num get v => _v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['name'] = _name;
    map['username'] = _username;
    map['email'] = _email;
    map['verifiedEmail'] = _verifiedEmail;
    map['idImage'] = _idImage;
    map['verificationStatus'] = _verificationStatus;
    map['isVarified'] = _isVarified;
    map['gender'] = _gender;
    map['profession'] = _profession;
    map['dob'] = _dob;
    map['intro'] = _intro;
    map['avatar'] = _avatar;
    if (_blockedUsers != null) {
      map['blockedUsers'] = _blockedUsers.map((v) => v.toJson()).toList();
    }
    if (_blockedBy != null) {
      map['blockedBy'] = _blockedBy.map((v) => v.toJson()).toList();
    }
    map['authProvider'] = _authProvider;
    map['password'] = _password;
    if (_firebaseTokens != null) {
      map['firebaseTokens'] = _firebaseTokens.map((v) => v.toJson()).toList();
    }
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['__v'] = _v;
    return map;
  }

}

/// platform : "someplatform"
/// firebaseToken : "saisjasioja"
/// _id : "6655c9d1c9f75402e9883973"

class FirebaseTokens {
  FirebaseTokens({
      String platform, 
      String firebaseToken, 
      String id,}){
    _platform = platform;
    _firebaseToken = firebaseToken;
    _id = id;
}

  FirebaseTokens.fromJson(dynamic json) {
    _platform = json['platform'];
    _firebaseToken = json['firebaseToken'];
    _id = json['_id'];
  }
  String _platform;
  String _firebaseToken;
  String _id;
FirebaseTokens copyWith({  String platform,
  String firebaseToken,
  String id,
}) => FirebaseTokens(  platform: platform ?? _platform,
  firebaseToken: firebaseToken ?? _firebaseToken,
  id: id ?? _id,
);
  String get platform => _platform;
  String get firebaseToken => _firebaseToken;
  String get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['platform'] = _platform;
    map['firebaseToken'] = _firebaseToken;
    map['_id'] = _id;
    return map;
  }

}