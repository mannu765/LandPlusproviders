// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_screen_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeScreenStore on _HomeScreenStore, Store {
  final _$selectedIndexAtom = Atom(name: '_HomeScreenStore.selectedIndex');

  @override
  int get selectedIndex {
    _$selectedIndexAtom.reportRead();
    return super.selectedIndex;
  }

  @override
  set selectedIndex(int value) {
    _$selectedIndexAtom.reportWrite(value, super.selectedIndex, () {
      super.selectedIndex = value;
    });
  }

  final _$_HomeScreenStoreActionController =
      ActionController(name: '_HomeScreenStore');

  @override
  void setSelectedIndex(int index) {
    final $actionInfo = _$_HomeScreenStoreActionController.startAction(
        name: '_HomeScreenStore.setSelectedIndex');
    try {
      return super.setSelectedIndex(index);
    } finally {
      _$_HomeScreenStoreActionController.endAction($actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedIndex: ${selectedIndex}
    ''';
  }
}
