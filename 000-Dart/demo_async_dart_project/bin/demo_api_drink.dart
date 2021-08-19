import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'drink.dart';

Future<void> main() async {
  try {
    final urlString =
        'https://www.thecocktaildb.com/api/json/v1/1/filter.php?c=Cocktail';

    final parsedURL = Uri.parse(urlString);
    final response = await http.get(parsedURL);
    final statusCode = response.statusCode;

    if (statusCode == 200) {
      final rawJsonString = response.body;
      final json = jsonDecode(rawJsonString);
      final listMap = json['drinks'] as List<dynamic>;

      final drinks = await listMap.map<Drink>((json) {
        return Drink.fromJson(json);
      }).toList();

      for (var item in drinks) {
        print(item);
      }
    } else {
      throw HttpException('Error with $statusCode');
    }
  } on SocketException catch (error) {
    print(error);
  } on HttpException catch (error) {
    print(error);
  } on FormatException catch (error) {
    print(error);
  }
}
