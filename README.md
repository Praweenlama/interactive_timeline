# interactive_timeline

A new Flutter project.
"# interactive_timeline" 


📖 CHEATSHEET 📖
** Riverpod set up **
ProviderScope
-----
** Easy level **
StateProvider
ConsumerWidget
ref.watch(riverpod)
ref.read(riverpod.notifier).state
-----
** Hard level (With a model) **
ChangeNotifierProvider
ChangeNotifier
notifyListeners
ConsumerWidget
ref.watch(riverpod).name
ref.read(riverpod).changeName(newName: newValue)
-----
** PS **
Watch = Listen to changes
Read = Don't listen to changes (Edit the value)