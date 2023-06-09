// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewsState {
  bool get isLoading => throw _privateConstructorUsedError;
  NewsModel get newsModel => throw _privateConstructorUsedError;
  String get currCountry => throw _privateConstructorUsedError;
  String get currCategory => throw _privateConstructorUsedError;
  String get currLanguage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewsStateCopyWith<NewsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsStateCopyWith<$Res> {
  factory $NewsStateCopyWith(NewsState value, $Res Function(NewsState) then) =
      _$NewsStateCopyWithImpl<$Res, NewsState>;
  @useResult
  $Res call(
      {bool isLoading,
      NewsModel newsModel,
      String currCountry,
      String currCategory,
      String currLanguage});
}

/// @nodoc
class _$NewsStateCopyWithImpl<$Res, $Val extends NewsState>
    implements $NewsStateCopyWith<$Res> {
  _$NewsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? newsModel = null,
    Object? currCountry = null,
    Object? currCategory = null,
    Object? currLanguage = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      newsModel: null == newsModel
          ? _value.newsModel
          : newsModel // ignore: cast_nullable_to_non_nullable
              as NewsModel,
      currCountry: null == currCountry
          ? _value.currCountry
          : currCountry // ignore: cast_nullable_to_non_nullable
              as String,
      currCategory: null == currCategory
          ? _value.currCategory
          : currCategory // ignore: cast_nullable_to_non_nullable
              as String,
      currLanguage: null == currLanguage
          ? _value.currLanguage
          : currLanguage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NewsStateCopyWith<$Res> implements $NewsStateCopyWith<$Res> {
  factory _$$_NewsStateCopyWith(
          _$_NewsState value, $Res Function(_$_NewsState) then) =
      __$$_NewsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      NewsModel newsModel,
      String currCountry,
      String currCategory,
      String currLanguage});
}

/// @nodoc
class __$$_NewsStateCopyWithImpl<$Res>
    extends _$NewsStateCopyWithImpl<$Res, _$_NewsState>
    implements _$$_NewsStateCopyWith<$Res> {
  __$$_NewsStateCopyWithImpl(
      _$_NewsState _value, $Res Function(_$_NewsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? newsModel = null,
    Object? currCountry = null,
    Object? currCategory = null,
    Object? currLanguage = null,
  }) {
    return _then(_$_NewsState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      newsModel: null == newsModel
          ? _value.newsModel
          : newsModel // ignore: cast_nullable_to_non_nullable
              as NewsModel,
      currCountry: null == currCountry
          ? _value.currCountry
          : currCountry // ignore: cast_nullable_to_non_nullable
              as String,
      currCategory: null == currCategory
          ? _value.currCategory
          : currCategory // ignore: cast_nullable_to_non_nullable
              as String,
      currLanguage: null == currLanguage
          ? _value.currLanguage
          : currLanguage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NewsState extends _NewsState {
  const _$_NewsState(
      {this.isLoading = true,
      required this.newsModel,
      this.currCountry = "in",
      this.currCategory = "general",
      this.currLanguage = "en"})
      : super._();

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final NewsModel newsModel;
  @override
  @JsonKey()
  final String currCountry;
  @override
  @JsonKey()
  final String currCategory;
  @override
  @JsonKey()
  final String currLanguage;

  @override
  String toString() {
    return 'NewsState(isLoading: $isLoading, newsModel: $newsModel, currCountry: $currCountry, currCategory: $currCategory, currLanguage: $currLanguage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.newsModel, newsModel) ||
                other.newsModel == newsModel) &&
            (identical(other.currCountry, currCountry) ||
                other.currCountry == currCountry) &&
            (identical(other.currCategory, currCategory) ||
                other.currCategory == currCategory) &&
            (identical(other.currLanguage, currLanguage) ||
                other.currLanguage == currLanguage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, newsModel,
      currCountry, currCategory, currLanguage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewsStateCopyWith<_$_NewsState> get copyWith =>
      __$$_NewsStateCopyWithImpl<_$_NewsState>(this, _$identity);
}

abstract class _NewsState extends NewsState {
  const factory _NewsState(
      {final bool isLoading,
      required final NewsModel newsModel,
      final String currCountry,
      final String currCategory,
      final String currLanguage}) = _$_NewsState;
  const _NewsState._() : super._();

  @override
  bool get isLoading;
  @override
  NewsModel get newsModel;
  @override
  String get currCountry;
  @override
  String get currCategory;
  @override
  String get currLanguage;
  @override
  @JsonKey(ignore: true)
  _$$_NewsStateCopyWith<_$_NewsState> get copyWith =>
      throw _privateConstructorUsedError;
}
