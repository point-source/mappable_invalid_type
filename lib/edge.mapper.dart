// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'edge.dart';

class EdgeUiMapper extends ClassMapperBase<EdgeUi> {
  EdgeUiMapper._();

  static EdgeUiMapper? _instance;
  static EdgeUiMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EdgeUiMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'EdgeUi';

  static String _$label(EdgeUi v) => v.label;
  static const Field<EdgeUi, String> _f$label =
      Field('label', _$label, opt: true, def: '');
  static InvalidType _$color(EdgeUi v) => v.color;
  static const Field<EdgeUi, InvalidType> _f$color =
      Field('color', _$color, opt: true, def: Colors.blue);

  @override
  final MappableFields<EdgeUi> fields = const {
    #label: _f$label,
    #color: _f$color,
  };

  static EdgeUi _instantiate(DecodingData data) {
    return EdgeUi(label: data.dec(_f$label), color: data.dec(_f$color));
  }

  @override
  final Function instantiate = _instantiate;

  static EdgeUi fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<EdgeUi>(map);
  }

  static EdgeUi fromJson(String json) {
    return ensureInitialized().decodeJson<EdgeUi>(json);
  }
}

mixin EdgeUiMappable {
  String toJson() {
    return EdgeUiMapper.ensureInitialized().encodeJson<EdgeUi>(this as EdgeUi);
  }

  Map<String, dynamic> toMap() {
    return EdgeUiMapper.ensureInitialized().encodeMap<EdgeUi>(this as EdgeUi);
  }

  EdgeUiCopyWith<EdgeUi, EdgeUi, EdgeUi> get copyWith =>
      _EdgeUiCopyWithImpl(this as EdgeUi, $identity, $identity);
  @override
  String toString() {
    return EdgeUiMapper.ensureInitialized().stringifyValue(this as EdgeUi);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            EdgeUiMapper.ensureInitialized()
                .isValueEqual(this as EdgeUi, other));
  }

  @override
  int get hashCode {
    return EdgeUiMapper.ensureInitialized().hashValue(this as EdgeUi);
  }
}

extension EdgeUiValueCopy<$R, $Out> on ObjectCopyWith<$R, EdgeUi, $Out> {
  EdgeUiCopyWith<$R, EdgeUi, $Out> get $asEdgeUi =>
      $base.as((v, t, t2) => _EdgeUiCopyWithImpl(v, t, t2));
}

abstract class EdgeUiCopyWith<$R, $In extends EdgeUi, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? label, InvalidType? color});
  EdgeUiCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _EdgeUiCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, EdgeUi, $Out>
    implements EdgeUiCopyWith<$R, EdgeUi, $Out> {
  _EdgeUiCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<EdgeUi> $mapper = EdgeUiMapper.ensureInitialized();
  @override
  $R call({String? label, InvalidType? color}) => $apply(FieldCopyWithData(
      {if (label != null) #label: label, if (color != null) #color: color}));
  @override
  EdgeUi $make(CopyWithData data) => EdgeUi(
      label: data.get(#label, or: $value.label),
      color: data.get(#color, or: $value.color));

  @override
  EdgeUiCopyWith<$R2, EdgeUi, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _EdgeUiCopyWithImpl($value, $cast, t);
}
