// Copyright 2014 Google Inc. All Rights Reserved.
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

part of quiver.iterables;

/// Partitions the input iterable into lists of the specified size.
Iterable<List<T>> partition<T>(Iterable<T> iterable, int size) {
  if (size <= 0) throw new ArgumentError(size);
  return _partition<T>(iterable, size);
}

Iterable<List<T>> _partition<T>(Iterable<T> iterable, int size) sync* {
  if (iterable.isEmpty) return;
  var iterator = iterable.iterator;
  iterator.moveNext();
  var first = iterator.current;
  while (true) {
    var part = [first];
    for (var i = 0; i < size - 1; i++) {
      if (!iterator.moveNext()) {
        yield part;
        return;
      }
      part.add(iterator.current);
    }
    yield part;
    if (iterator.moveNext()) {
      first = iterator.current;
    } else {
      return;
    }
  }
}
