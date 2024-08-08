import 'dart:io';
import 'package:encrypt/encrypt.dart' as encrypt;

class FileCrypto {
  final encrypt.Key key = encrypt.Key.fromLength(32); // Clé de 256 bits
  final encrypt.IV iv = encrypt.IV.fromLength(16); // IV de 128 bits
  final encrypt.Encrypter encrypter;

  FileCrypto() : encrypter = encrypt.Encrypter(encrypt.AES(key));

  Future<void> encryptFile(String filePath) async {
    final file = File(filePath);
    final plainText = await file.readAsString();
    final encrypted = encrypter.encrypt(plainText, iv: iv);
    await file.writeAsString(encrypted.base64);
  }

  Future<void> decryptFile(String filePath) async {
    final file = File(filePath);
    final encryptedData = await file.readAsString();
    final encrypted = encrypt.Encrypted.fromBase64(encryptedData);
    final decrypted = encrypter.decrypt(encrypted, iv: iv);
    await file.writeAsString(decrypted);
  }
}

void main() async {
  final fileCrypto = FileCrypto();
  await fileCrypto.encryptFile('path/to/your/file.txt');
  await fileCrypto.decryptFile('path/to/your/file.txt');
}
