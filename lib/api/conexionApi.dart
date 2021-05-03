import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

const baseUrl =
    "http://10.0.2.2:8080/"; //10.0.2.2 porque estas en un emulador de android

class API {
  static Future getClientes() async {
    /*var url = baseUrl + "/clientes/all";
    final response = await http.get(url);
    if (response.statusCode == 200){
      var responseJson = json.decode(response.body);
      return responseJson;
    } else {
      return null;
    }*/
  }

  static Future createCliente(var data) async {
    var url = baseUrl + "/clientes/new";

    var body = json.encode(data);

    var response = await http.post(url as Uri,
        headers: {"Content-Type": "application/json"}, body: body);

    print("${response.statusCode}");
    print("${response.body}");

    print("Funcion de crear cliente");
  }

  static Future getCliente(var user) async {
    var url = baseUrl + "/clientes/getByUsuario/$user";
    final response = await http.get(url as Uri);
    if (response.statusCode == 200) {
      var responseJson = json.decode(response.body);
      return responseJson;
    } else {
      return null;
    }
  }

  static Future getLocales() async {}
}
