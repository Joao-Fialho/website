// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'packages_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $PackagesController = BindInject(
  (i) =>
      PackagesController(i<ScreenSize>(), i<GetPackages>(), i<UrlLauncher>()),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PackagesController on _PackagesControllerBase, Store {
  final _$packagesAtom = Atom(name: '_PackagesControllerBase.packages');

  @override
  ObservableList<ResultPackage> get packages {
    _$packagesAtom.reportRead();
    return super.packages;
  }

  @override
  set packages(ObservableList<ResultPackage> value) {
    _$packagesAtom.reportWrite(value, super.packages, () {
      super.packages = value;
    });
  }

  final _$errorAtom = Atom(name: '_PackagesControllerBase.error');

  @override
  String get error {
    _$errorAtom.reportRead();
    return super.error;
  }

  @override
  set error(String value) {
    _$errorAtom.reportWrite(value, super.error, () {
      super.error = value;
    });
  }

  final _$_PackagesControllerBaseActionController =
      ActionController(name: '_PackagesControllerBase');

  @override
  dynamic fetchPackages() {
    final _$actionInfo = _$_PackagesControllerBaseActionController.startAction(
        name: '_PackagesControllerBase.fetchPackages');
    try {
      return super.fetchPackages();
    } finally {
      _$_PackagesControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
packages: ${packages},
error: ${error}
    ''';
  }
}
