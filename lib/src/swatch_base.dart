import 'dart:ui';

import 'palette.dart';
import 'swatch.dart';

/// Base Swatch.
abstract class SwatchBase implements Swatch {
  /// Swatch colors from palettes.
  ///
  /// Upon [colors] request, it will retrieve a new lazy [Iterable] with [Color]
  /// elements.
  const SwatchBase(this._palettes);

  // Source of picked colors.
  final Iterable<Palette> _palettes;

  @override
  Iterable<Color> get colors => _palettes.map((palette) => palette.color);

  /// Forwards to [colors].
  Iterable<Color> call() => colors;
}
