import 'dart:convert'; // Pour l'encodage et le décodage
import 'package:encrypt/encrypt.dart' as encrypt;

class AESCrypto {
  // Clé et IV sont généralement stockés de manière sécurisée
  final encrypt.Key key = encrypt.Key.fromLength(32); // Clé de 256 bits
  final encrypt.IV iv = encrypt.IV.fromLength(16); // IV de 128 bits
  static Lfsr() {
    
  }

  // Instance d'Encrypter avec AES
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



void main() {
  final aesCrypto = AESCrypto();

  // Texte à chiffrer
  final plainText = 'Voici un texte secret';

  // Chiffrement du texte
  final encryptedText = aesCrypto.encryptData(plainText);
  print('Texte chiffré: $encryptedText');

  // Déchiffrement du texte
  final decryptedText = aesCrypto.decryptData(encryptedText);
  print('Texte déchiffré: $decryptedText');
}
