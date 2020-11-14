import 'package:process_run/shell_run.dart';
import 'package:pub_semver/pub_semver.dart';

Future<void> main() async {
  final shell = Shell();

  final nnbdEnabled = dartVersion > Version(2, 11, 0, pre: '0');
  if (nnbdEnabled) {
    // Temp dart extra option. To remove once nnbd supported on stable without flags
    final dartExtraOptions = '--enable-experiment=non-nullable';
    // Needed for run and test
    final dartRunExtraOptions = '$dartExtraOptions --no-sound-null-safety';
    await shell.run('''

flutter format --set-exit-if-changed lib test tool
flutter analyze --no-current-package lib test tool
flutter test $dartRunExtraOptions --no-pub --coverage

''');
  }
}