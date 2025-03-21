// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:polkadart/scale_codec.dart' as _i1;

typedef PrevalidateAttests = dynamic;

class PrevalidateAttestsCodec with _i1.Codec<PrevalidateAttests> {
  const PrevalidateAttestsCodec();

  @override
  PrevalidateAttests decode(_i1.Input input) {
    return _i1.NullCodec.codec.decode(input);
  }

  @override
  void encodeTo(
    PrevalidateAttests value,
    _i1.Output output,
  ) {
    _i1.NullCodec.codec.encodeTo(
      value,
      output,
    );
  }

  @override
  int sizeHint(PrevalidateAttests value) {
    return _i1.NullCodec.codec.sizeHint(value);
  }
}
