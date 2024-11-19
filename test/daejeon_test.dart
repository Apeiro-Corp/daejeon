import 'package:flutter_test/flutter_test.dart';

void main() {
  bool checkIfBestOperatingSystem(String os) {
    return os == "android";
  }

  test('prove android is the best OS', () {
    expect(checkIfBestOperatingSystem("android"), true);
  });
}
