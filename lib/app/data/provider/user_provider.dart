import 'dart:convert';

import 'package:get/get.dart';
import 'package:growallet/app/common/pref_store.dart';
import 'package:growallet/app/data/models/token.dart';
import 'package:growallet/app/data/models/user.dart';
import 'package:growallet/config.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserProvider extends GetConnect {
  // Get request
  Future<bool> getUser(String id) async {
    var userResponse = await get(
      '${Config.lbpAPILink}users/$id',
      headers: {"service-api-key": Config.serviceAPIKey},
    );
    if (userResponse.body["statusMessage"] == "Success") {
      var user = userResponse.body["responseData"];
      var d = await Get.putAsync<SharedPreferences>(() async {
        final prefs = await SharedPreferences.getInstance();
        var userM = UserModel(
            name: "chanrith",
            id: user["userId"],
            wallet: user["walletAddress"]);
        await prefs.setString("user", json.encode(userM));
        return prefs;
      });
      return true;
    } else {
      return null;
    }
  }

  Future<List<TokenModel>> getTokenList(String id) async {
    var userResponse = await get(
      '${Config.lbpAPILink}users/$id/item-tokens/${Config.contractID}/non-fungibles/${Config.tokenType}',
      headers: {"service-api-key": Config.serviceAPIKey},
    );
    if (userResponse.body["statusMessage"] == "Success") {
      var tokens = userResponse.body["responseData"];
      if (tokens != null) {
        List<TokenModel> listToken = tokens.map<TokenModel>((map) {
          return TokenModel.fromJson(map);
        }).toList();
        return listToken;
      }
      return null;
    } else {
      return null;
    }
  }

  Future<bool> mintToken(String id, String value) async {
    var meta = {
      "type": "Low Risk",
      "value": value,
    };
    var j = {
      "ownerAddress": Config.walletAddress,
      "ownerSecret": Config.walletSecret,
      "toAddress": PreferenceStore.getUser().wallet,
      "name": "MovieTicket",
      "meta": jsonEncode(meta)
    };
    var userResponse = await post(
      '${Config.lbpAPILink}item-tokens/${Config.contractID}/non-fungibles/${Config.tokenType}/mint',
      j,
      headers: {"service-api-key": "9b7325d3-0974-4d9e-8edd-70ed4d4e9fa0"},
    );
    if (userResponse.body["statusMessage"] == "Accepted") {
      return true;
    } else {
      return false;
    }
  }
}
