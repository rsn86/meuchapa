// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$currentTabIndexAtom =
      Atom(name: '_HomeControllerBase.currentTabIndex');

  @override
  int get currentTabIndex {
    _$currentTabIndexAtom.reportRead();
    return super.currentTabIndex;
  }

  @override
  set currentTabIndex(int value) {
    _$currentTabIndexAtom.reportWrite(value, super.currentTabIndex, () {
      super.currentTabIndex = value;
    });
  }

  final _$logoutAsyncAction = AsyncAction('_HomeControllerBase.logout');

  @override
  Future<dynamic> logout() {
    return _$logoutAsyncAction.run(() => super.logout());
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  void updateCurrentIndex(int index) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.updateCurrentIndex');
    try {
      return super.updateCurrentIndex(index);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentTabIndex: ${currentTabIndex}
    ''';
  }
}
