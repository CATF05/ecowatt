import 'package:encrypt/encrypt.dart' as encrypt;
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  final encrypt.Key key = encrypt.Key.fromLength(32); // Clé de 256 bits
  final encrypt.IV iv = encrypt.IV.fromLength(16); // IV de 128 bits
  final encrypt.Encrypter encrypter;

  LocalStorage() : encrypter = encrypt.Encrypter(encrypt.AES(key));

  Future<void> saveData(String data) async {
    final encryptedData = encrypter.encrypt(data, iv: iv);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('encrypted_data', encryptedData.base64);
  }

  Future<String?> loadData() async {
    final prefs = await SharedPreferences.getInstance();
    final encryptedData = prefs.getString('encrypted_data');
    if (encryptedData != null) {
      final decryptedData = encrypter.decrypt64(encryptedData, iv: iv);
      return decryptedData;
    }
    return null;
  }
}

void main() async {
  final storage = LocalStorage();
  await storage.saveData('Texte sensible à stocker');
  final data = await storage.loadData();
  print('Données chargées : $data');
}
