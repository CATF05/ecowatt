import 'dart:convert';
import 'package:encrypt/encrypt.dart' as encrypt;
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AESCrypto {
  final encrypt.Key key = encrypt.Key.fromLength(32); // Clé de 256 bits
  final encrypt.IV iv = encrypt.IV.fromLength(16); // IV de 128 bits(vecteurs d'initialisation)
  final encrypt.Encrypter encrypter;

  AESCrypto() : encrypter = encrypt.Encrypter(encrypt.AES(Key));

  String encryptData(String plainText) {
    final encrypted = encrypter.encrypt(plainText, iv: iv);
    return encrypted.base64;
  }

  String decryptData(String encryptedText) {
    final encrypted = encrypt.Encrypted.fromBase64(encryptedText);
    return encrypter.decrypt(encrypted, iv: iv);
  }
}

Future<void> sendTransaction(String transactionData) async {
  final aesCrypto = AESCrypto();
  final encryptedData = aesCrypto.encryptData(transactionData);

  final response = await http.post(
    Uri.parse('https://mon-api-endpoint.com/transaction'),
    headers: <String, String>{
      'Content-Type': 'application/json',
    },
    body: jsonEncode({'transaction': encryptedData}),
  );

  if (response.statusCode == 200) {
    print('Transaction envoyée avec succès');
  } else {
    print('Échec de l\'envoi de la transaction');
  }
}

Future<void> receiveTransaction() async {
  final response = await http.get(Uri.parse('https://mon-api-endpoint.com/transaction'));

  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    final aesCrypto = AESCrypto();
    final decryptedTransaction = aesCrypto.decryptData(data['transaction']);
    print('Transaction déchiffrée : $decryptedTransaction');
  } else {
    print('Échec de la récupération de la transaction');
  }
}

void main() {
  final transaction = 'Données de transaction sensibles';
  sendTransaction(transaction);
  receiveTransaction();
}
