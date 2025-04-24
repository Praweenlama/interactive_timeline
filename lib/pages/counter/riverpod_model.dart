import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:interactive_timeline/pages/counter/count.dart';

final riverpod = ChangeNotifierProvider<CounterModel>((ref) {
  return CounterModel(count: 0);
});
