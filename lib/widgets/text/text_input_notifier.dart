import 'package:flutter_riverpod/flutter_riverpod.dart';

class InputTextState {
  final DateTime? selectedDate;
  final String title;
  final String description;
  final String? displayData;

  InputTextState({
    this.selectedDate,
    this.title = 'No title',
    this.description = 'No description',
    this.displayData,
  });

  InputTextState copyWith({
    DateTime? selectedDate,
    String? title,
    String? description,
    String? displayData,
  }) {
    return InputTextState(
      selectedDate: selectedDate ?? this.selectedDate,
      title: title ?? this.title,
      description: description ?? this.description,
      displayData: displayData ?? this.displayData,
    );
  }
}

class InputTextNotifier extends StateNotifier<InputTextState> {
  InputTextNotifier() : super(InputTextState());

  void updateTitle(String title) {
    state = state.copyWith(title: title);
  }

  void updateDescription(String description) {
    state = state.copyWith(description: description);
  }

  void updateSelectedDate(DateTime date) {
    state = state.copyWith(selectedDate: date);
  }

  void generateDisplayData() {
    final displayData =
        'Title: ${state.title}\n'
        'Description: ${state.description}\n'
        'Date: ${state.selectedDate != null ? state.selectedDate.toString().split(' ')[0] : 'No date selected'}';
    state = state.copyWith(displayData: displayData);
  }
}

final inputTextProvider =
    StateNotifierProvider<InputTextNotifier, InputTextState>((ref) {
      return InputTextNotifier();
    });
