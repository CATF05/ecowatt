import 'dart:convert'; // Pour l'encodage et le décodage
import 'package:encrypt/encrypt.dart' as encrypt;
import 'package:http/http.dart' as http; // Pour les requêtes HTTP

class AESCrypto {
  final encrypt.Key key = encrypt.Key.fromLength(32); // Clé de 256 bits
  final encrypt.IV iv = encrypt.IV.fromLength(16); // IV de 128 bits
  final encrypt.Encrypter encrypter;

  AESCrypto() : encrypter = encrypt.Encrypter(encrypt.AES(key));

  // Méthode pour chiffrer le texte
  String encryptData(String plainText) {
    final encrypted = encrypter.encrypt(plainText, iv: iv);
    return encrypted.base64; // Encodage en Base64 pour la transmission
  }

  // Méthode pour déchiffrer le texte
  String decryptData(String encryptedText) {
    final encrypted = encrypt.Encrypted.fromBase64(encryptedText);
    final decrypted = encrypter.decrypt(encrypted, iv: iv);
    return decrypted;
  }
}

Future<void> sendEncryptedData(String data) async {
  final aesCrypto = AESCrypto();
  final encryptedData = aesCrypto.encryptData(data);

  // Envoyer les données chiffrées au serveur
  final response = await http.post(
    Uri.parse('https://mon-api-endpoint.com/data'),
    headers: <String, String>{
      'Content-Type': 'application/json',
    },
    body: jsonEncode({'data': encryptedData}),
  );

  if (response.statusCode == 200) {
    print('Données envoyées avec succès');
  } else {
    print('Échec de l\'envoi des données');
  }
}

Future<void> receiveAndDecryptData() async {
  final response = await http.get(Uri.parse('https://mon-api-endpoint.com/data'));

  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    final aesCrypto = AESCrypto();
    final decryptedData = aesCrypto.decryptData(data['data']);
    print('Données déchiffrées : $decryptedData');
  } else {
    print('Échec de la récupération des données');
  }
}

void main() {
  final dataToSend = 'Texte sensible à envoyer';
  sendEncryptedData(dataToSend);
  receiveAndDecryptData();
}
