class TokenModel {
  String index;
  String name;
  String meta;

  TokenModel.fromJson(Map<String, dynamic> json) {
    this.index = json['index'];
    this.name = json['name'];
    this.meta = json['meta'];
  }
}
