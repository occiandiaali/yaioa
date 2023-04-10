class GamesModel {
  int? id;
  String? avatar;
  String? firstName;

  GamesModel({
    this.id,
    this.avatar,
    this.firstName
});

  GamesModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    avatar = json['avatar'];
    firstName = json['first_name'];
  }
}

