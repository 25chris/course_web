import 'package:intl/intl.dart';

const String ksHomeBottomSheetTitle = 'Build Great Apps!';
const String ksHomeBottomSheetDescription =
    'Stacked is built to help you build better apps. Give us a chance and we\'ll prove it to you. Check out stacked.filledstacks.com to learn more';

String squerePhoto(int size) => 'https://picsum.photos/$size';
String rectanglePhoto(int width, int height) =>
    'https://picsum.photos/$width/$height';
String currencyFormat({required int value}) =>
    "${NumberFormat.currency(locale: "ID_id", symbol: "Rp. ").format(value).substring(0, NumberFormat.currency(locale: "ID_id", symbol: "Rp. ").format(value).length - 3)},-";

const String ksWebTitle = 'Kursus Online Komputer Dasar &\nLanjutan';
