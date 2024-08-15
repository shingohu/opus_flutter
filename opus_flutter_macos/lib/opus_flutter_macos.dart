import 'dart:async';
import 'dart:ffi';

import 'package:opus_flutter_platform_interface/opus_flutter_platform_interface.dart';

/// An implementation of [OpusFlutterPlatform] for macos.
class OpusFlutterMacos extends OpusFlutterPlatform {
  /// Opens the static opus library build into this plugin.
  Future<dynamic> load() async {
    return DynamicLibrary.process();
  }
}
