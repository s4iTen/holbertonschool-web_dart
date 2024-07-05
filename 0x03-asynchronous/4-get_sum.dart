import '4-util.dart';
import 'dart:convert';

Future<String> calculateTotal() async {
    try {
        String userData = await fetchUserData();
        Map<String, dynamic> user = jsonDecode(userData);
        String id = user['id'];
        String orders = await fetchUserOrders(id);
        List<dynamic> products = jsonDecode(orders);
        double total = 0;
        for (var product in products) {
            String price = await fetchProductPrice(product);
            total += double.parse(price);
        }
        return '$total';
    } catch (e) {
        return -1;
    }
}