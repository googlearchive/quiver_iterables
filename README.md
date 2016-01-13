Quiver Iterables
================

A collection of utilities for generating and manipulating Dart Iterables.

[![Build Status](https://travis-ci.org/QuiverDart/quiver_iterables.svg?branch=master)](https://travis-ci.org/QuiverDart/quiver_iterables)
[![Coverage Status](https://img.shields.io/coveralls/QuiverDart/quiver_iterables.svg)](https://coveralls.io/r/QuiverDart/quiver_iterables)

## Documentation

[API Docs](http://www.dartdocs.org/documentation/quiver_iterables/latest)

`concat`, `count`, `cycle`, `enumerate`, `merge`, `partition`, `range`, and
`zip` create, transform, or combine Iterables in different ways, similar to
Python's itertools.

`min`, `max`, and `extent` retrieve the minimum and maximum elements from an
iterable.

`GeneratingIterable` is an easy way to create lazy iterables that produce
elements by calling a function. A common use-case is to traverse properties in
an object graph, like the parent relationship in a tree.

`TwoWayGeneratingIterable` is similar to `GeneratingIterable`, but can be used when both the first and last element
are known and elements can be traversed in both directions.

`InfiniteIterable` is a base class for Iterables that throws on operations that
require a finite length.
