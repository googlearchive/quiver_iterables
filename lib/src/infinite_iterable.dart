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

part of quiver.iterables;

/// A base class for [Iterable]s of infinite length that throws
/// [UnsupportedError] for methods that would require the Iterable to terminate.
abstract class InfiniteIterable<E> extends IterableBase<E> {
  bool get isEmpty => false;

  bool get isNotEmpty => true;

  @alwaysThrows
  E get last => throw new UnsupportedError('last');

  @alwaysThrows
  int get length => throw new UnsupportedError('length');

  @alwaysThrows
  E get single => throw new StateError('single');

  @alwaysThrows
  bool every(bool f(E element)) => throw new UnsupportedError('every');

  @alwaysThrows
  T fold<T>(T initialValue, T combine(T previousValue, E element)) =>
      throw new UnsupportedError('fold');

  @alwaysThrows
  void forEach(void f(E element)) => throw new UnsupportedError('forEach');

  @alwaysThrows
  String join([String separator = '']) => throw new UnsupportedError('join');

  @alwaysThrows
  E lastWhere(bool test(E value), {E orElse()}) =>
      throw new UnsupportedError('lastWhere');

  @alwaysThrows
  E reduce(E combine(E value, E element)) =>
      throw new UnsupportedError('reduce');

  @alwaysThrows
  List<E> toList({bool growable: true}) => throw new UnsupportedError('toList');

  Set<E> toSet() => throw new UnsupportedError('toSet');
}
