import 'package:dart_mappable/dart_mappable.dart';
import 'package:flutter/material.dart';

part 'edge.mapper.dart';

@MappableClass()
@immutable
class EdgeUi with EdgeUiMappable {
  final String label;
  final Color color;

  const EdgeUi({
    this.label = '',
    this.color = Colors.blue,
  });
}
