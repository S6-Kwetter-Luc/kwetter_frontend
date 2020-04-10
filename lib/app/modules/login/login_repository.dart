import 'package:kwetter_frontend/constants.dart' as Constants;
import 'package:http/http.dart' as http;

class login_repository {
  Future<String> attemptLogin(String email, String password) async {
    var res = await http.post(Constants.SERVER_IP + "/login",
        body: {"email": email, "password": password});
    if (res.statusCode == 200) return res.body;
    return null;
  }
}
