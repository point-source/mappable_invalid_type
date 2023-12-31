import 'package:dart_mappable/dart_mappable.dart';
import 'package:flutter/material.dart';

part 'edge.mapper.dart';

@MappableClass()
@immutable
class Edge with EdgeMappable {
  final String id;
  final Map<String, EdgeUi> layers;

  Edge({
    String? id,
    this.layers = const {},
  }) : id = id ?? '';

  EdgeLayerView layer(String layerId) => EdgeLayerView(this, layerId);
}

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

class EdgeLayerView {
  Edge edge;
  final String layer;

  EdgeLayerView(this.edge, this.layer);

  EdgeUi? get ui => edge.layers[layer];

  EdgeLayerView updateLayer(EdgeUi Function(EdgeUi ui) updater) {
    final Map<String, EdgeUi> layers = Map.from(edge.layers);
    layers[layer] = updater(layers[layer]!);
    edge = edge.copyWith(layers: layers);
    return this;
  }

  EdgeLayerView setLabel(String label) {
    updateLayer((ui) => ui.copyWith(label: label));
    return this;
  }

  Edge save() => edge;
}
