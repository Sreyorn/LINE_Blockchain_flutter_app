class UserModel {
  String id;
  String name;
  String wallet;
  double balance = 100000;

  UserModel({this.id, this.name, this.wallet});

  UserModel.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.name = json['name'];
    this.wallet = json['wallet'];
  }

  updateWallet(int sub) {
    this.balance = this.balance - sub;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['id'] = this.id;
    data['wallet'] = this.wallet;
    data['balance'] = this.balance;
    return data;
  }
}
