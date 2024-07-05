import 'dart:convert';
import 'dart:io';

Future<void> printRmCharacters() async {
  try {
    HttpClient client = HttpClient();
    HttpClientRequest request = await client.getUrl(Uri.parse('https://rickandmortyapi.com/api/character'));
    HttpClientResponse response = await request.close();

    if (response.statusCode == 200) {
      String responseBody = await response.transform(utf8.decoder).join();
      Map<String, dynamic> data = json.decode(responseBody);
      List<dynamic> characters = data['results'];
      for (var character in characters) {
        print(character['name']);
      }
    } else {
      print('Error: ${response.statusCode}');
    }
  } catch (e) {
    print('error caught: $e');
  }
}
