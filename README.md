# mappable_invalid_type

A (hopefully reproduceable) example of a bug in the dart_mappable package which causes certain types like `Color` to be
unrecognised and generated as `InvalidType` instead of `Color`.

## How to reproduce

1. Clone this repository
1. Run `flutter clean` to ensure all generated files are deleted
1. Run `flutter pub get` to install all dependencies
1. Open `lib/edge.dart` and see that the `Color` type is present
1. Run `dart run build_runner build --delete-conflicting-outputs` to generate the files
1. Open `lib/edge.mapper.dart` and see that the `Color` type is not present and instead `InvalidType` is used

## Example:

```dart
static InvalidType _$color(EdgeUi v) => v.color;
static const Field<EdgeUi, InvalidType> _f$color =
    Field('color', _$color, opt: true, def: Colors.blue);

```
