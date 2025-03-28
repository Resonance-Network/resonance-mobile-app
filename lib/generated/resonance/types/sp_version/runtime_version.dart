// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i4;

import 'package:polkadart/scale_codec.dart' as _i1;
import 'package:quiver/collection.dart' as _i5;

import '../cow_1.dart' as _i2;
import '../cow_2.dart' as _i3;
import '../tuples.dart' as _i6;

class RuntimeVersion {
  const RuntimeVersion({
    required this.specName,
    required this.implName,
    required this.authoringVersion,
    required this.specVersion,
    required this.implVersion,
    required this.apis,
    required this.transactionVersion,
    required this.systemVersion,
  });

  factory RuntimeVersion.decode(_i1.Input input) {
    return codec.decode(input);
  }

  /// Cow<'static, str>
  final _i2.Cow specName;

  /// Cow<'static, str>
  final _i2.Cow implName;

  /// u32
  final int authoringVersion;

  /// u32
  final int specVersion;

  /// u32
  final int implVersion;

  /// ApisVec
  final _i3.Cow apis;

  /// u32
  final int transactionVersion;

  /// u8
  final int systemVersion;

  static const $RuntimeVersionCodec codec = $RuntimeVersionCodec();

  _i4.Uint8List encode() {
    return codec.encode(this);
  }

  Map<String, dynamic> toJson() => {
        'specName': specName,
        'implName': implName,
        'authoringVersion': authoringVersion,
        'specVersion': specVersion,
        'implVersion': implVersion,
        'apis': apis
            .map((value) => [
                  value.value0.toList(),
                  value.value1,
                ])
            .toList(),
        'transactionVersion': transactionVersion,
        'systemVersion': systemVersion,
      };

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is RuntimeVersion &&
          other.specName == specName &&
          other.implName == implName &&
          other.authoringVersion == authoringVersion &&
          other.specVersion == specVersion &&
          other.implVersion == implVersion &&
          _i5.listsEqual(
            other.apis,
            apis,
          ) &&
          other.transactionVersion == transactionVersion &&
          other.systemVersion == systemVersion;

  @override
  int get hashCode => Object.hash(
        specName,
        implName,
        authoringVersion,
        specVersion,
        implVersion,
        apis,
        transactionVersion,
        systemVersion,
      );
}

class $RuntimeVersionCodec with _i1.Codec<RuntimeVersion> {
  const $RuntimeVersionCodec();

  @override
  void encodeTo(
    RuntimeVersion obj,
    _i1.Output output,
  ) {
    _i1.StrCodec.codec.encodeTo(
      obj.specName,
      output,
    );
    _i1.StrCodec.codec.encodeTo(
      obj.implName,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      obj.authoringVersion,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      obj.specVersion,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      obj.implVersion,
      output,
    );
    const _i1.SequenceCodec<_i6.Tuple2<List<int>, int>>(
        _i6.Tuple2Codec<List<int>, int>(
      _i1.U8ArrayCodec(8),
      _i1.U32Codec.codec,
    )).encodeTo(
      obj.apis,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      obj.transactionVersion,
      output,
    );
    _i1.U8Codec.codec.encodeTo(
      obj.systemVersion,
      output,
    );
  }

  @override
  RuntimeVersion decode(_i1.Input input) {
    return RuntimeVersion(
      specName: _i1.StrCodec.codec.decode(input),
      implName: _i1.StrCodec.codec.decode(input),
      authoringVersion: _i1.U32Codec.codec.decode(input),
      specVersion: _i1.U32Codec.codec.decode(input),
      implVersion: _i1.U32Codec.codec.decode(input),
      apis: const _i1.SequenceCodec<_i6.Tuple2<List<int>, int>>(
          _i6.Tuple2Codec<List<int>, int>(
        _i1.U8ArrayCodec(8),
        _i1.U32Codec.codec,
      )).decode(input),
      transactionVersion: _i1.U32Codec.codec.decode(input),
      systemVersion: _i1.U8Codec.codec.decode(input),
    );
  }

  @override
  int sizeHint(RuntimeVersion obj) {
    int size = 0;
    size = size + const _i2.CowCodec().sizeHint(obj.specName);
    size = size + const _i2.CowCodec().sizeHint(obj.implName);
    size = size + _i1.U32Codec.codec.sizeHint(obj.authoringVersion);
    size = size + _i1.U32Codec.codec.sizeHint(obj.specVersion);
    size = size + _i1.U32Codec.codec.sizeHint(obj.implVersion);
    size = size + const _i3.CowCodec().sizeHint(obj.apis);
    size = size + _i1.U32Codec.codec.sizeHint(obj.transactionVersion);
    size = size + _i1.U8Codec.codec.sizeHint(obj.systemVersion);
    return size;
  }
}
