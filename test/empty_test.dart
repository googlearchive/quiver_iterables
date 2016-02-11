// Copyright 2013 Google Inc. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

library quiver.iterables.empty_test;

import 'package:test/test.dart' hide isEmpty, isNotEmpty;
import 'package:quiver_iterables/iterables.dart';

main() {
  group('isEmpty', () {
    test('should consider null to be empty', () {
      expect(isEmpty(null), isTrue);
    });
    test('should consider empty iterable to be empty', () {
        expect(isEmpty([]), isTrue);
    });
    test('should consider non-empty iterable to not be empty', () {
        expect(isEmpty(['test']), isFalse);
    });
  });

  group('isNotEmpty', () {
    test('should consider null to be empty', () {
      expect(isNotEmpty(null), isFalse);
    });
    test('should consider empty iterable to be empty', () {
        expect(isNotEmpty([]), isFalse);
    });
    test('should consider non-empty iterable to not be empty', () {
        expect(isNotEmpty(['test']), isTrue);
    });
  });
}
