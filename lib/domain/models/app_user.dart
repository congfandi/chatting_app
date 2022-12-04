class AppUser {
  AppUser({
      this.name, 
      this.uid, 
      this.picture, 
      this.lastLogin,});

  AppUser.fromJson(dynamic json) {
    name = json['name'];
    uid = json['uid'];
    picture = json['picture'];
    lastLogin = json['lastLogin'];
  }
  String? name;
  String? uid;
  String? picture;
  String? lastLogin;
AppUser copyWith({  String? name,
  String? uid,
  String? picture,
  String? lastLogin,
}) => AppUser(  name: name ?? this.name,
  uid: uid ?? this.uid,
  picture: picture ?? this.picture,
  lastLogin: lastLogin ?? this.lastLogin,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['uid'] = uid;
    map['picture'] = picture;
    map['lastLogin'] = lastLogin;
    return map;
  }

}