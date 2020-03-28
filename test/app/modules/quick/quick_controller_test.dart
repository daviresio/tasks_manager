import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:todolistapp/app/quick/quick_controller.dart';
import 'package:todolistapp/app/quick/quick_module.dart';

void main() {
  initModule(QuickModule());
  QuickController quick;

  setUp(() {
    quick = QuickModule.to.get<QuickController>();
  });

  group('QuickController Test', () {
    test("First Test", () {
      expect(quick, isInstanceOf<QuickController>());
    });

    test("Set Value", () {
      expect(quick.value, equals(0));
      quick.increment();
      expect(quick.value, equals(1));
    });
  });
}
