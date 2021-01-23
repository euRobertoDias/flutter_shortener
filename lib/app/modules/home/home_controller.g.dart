// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $HomeController = BindInject(
  (i) => HomeController(i<IsGdRepository>()),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  Computed<bool> _$isValidUrlsListComputed;

  @override
  bool get isValidUrlsList =>
      (_$isValidUrlsListComputed ??= Computed<bool>(() => super.isValidUrlsList,
              name: '_HomeControllerBase.isValidUrlsList'))
          .value;
  Computed<bool> _$isValidUrlComputed;

  @override
  bool get isValidUrl =>
      (_$isValidUrlComputed ??= Computed<bool>(() => super.isValidUrl,
              name: '_HomeControllerBase.isValidUrl'))
          .value;

  final _$urlsListAtom = Atom(name: '_HomeControllerBase.urlsList');

  @override
  ObservableList<List<UrlsModel>> get urlsList {
    _$urlsListAtom.reportRead();
    return super.urlsList;
  }

  @override
  set urlsList(ObservableList<List<UrlsModel>> value) {
    _$urlsListAtom.reportWrite(value, super.urlsList, () {
      super.urlsList = value;
    });
  }

  final _$longUrlAtom = Atom(name: '_HomeControllerBase.longUrl');

  @override
  String get longUrl {
    _$longUrlAtom.reportRead();
    return super.longUrl;
  }

  @override
  set longUrl(String value) {
    _$longUrlAtom.reportWrite(value, super.longUrl, () {
      super.longUrl = value;
    });
  }

  final _$getUrlsAsyncAction = AsyncAction('_HomeControllerBase.getUrls');

  @override
  Future<dynamic> getUrls(String url) {
    return _$getUrlsAsyncAction.run(() => super.getUrls(url));
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  String setLongUrl(String value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.setLongUrl');
    try {
      return super.setLongUrl(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
urlsList: ${urlsList},
longUrl: ${longUrl},
isValidUrlsList: ${isValidUrlsList},
isValidUrl: ${isValidUrl}
    ''';
  }
}
