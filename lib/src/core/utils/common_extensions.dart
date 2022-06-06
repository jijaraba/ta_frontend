import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tresastronautas_frotend/src/config/localizations.dart';

extension ToBuildContextX on BuildContext {
  AppLocalizations get localizations => AppLocalizations.of(this);
  ThemeData get theme => Theme.of(this);
}

extension StringX on String {

  DateTime get stringToDate => DateFormat('dd/MM/yyyy').parse(this);

  DateTime get stringToDateTime => DateFormat('dd/MM/yyyy hh:mm a').parse(this);

  bool get validateEmail => RegExp(
    r'^[a-zA-Z\d.a-zA-Z\d.!#$%&’*+-/=?^_`{|}~]+@[a-zA-Z\d]+\.[a-zA-Z]+',
  ).hasMatch(this);

  static const passwordRegexString =
      r'^(?=.*[A-Za-z])(?=.*\d)(?=.*[*$@&[\]{}=#._\-!?+/£€%])[A-Za-z\d*$@&[\]{}=#._\-!?+/£€%]{8,}$';

  bool get validatePassword => RegExp(passwordRegexString).hasMatch(this);

  bool get validatePhone => RegExp(r'^\d+$').hasMatch(this);

  bool get validateStrings =>
      RegExp(r'^(?!\s*$)[a-zA-Z-À-ÿ- ]+$').hasMatch(this);

  bool get validateNumber => RegExp(r'^\d+$').hasMatch(this);

  Color toColor() {
    final buffer = StringBuffer();
    if (length == 6 || length == 7) buffer.write('ff');

    buffer.write(replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  String formatName() {
    final nameSplit = split(' ');
    return nameSplit.length <= 3 ? this : '${nameSplit[0]} ${nameSplit[2]}';
  }

  String toCapitalized() =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';
}


