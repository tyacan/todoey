
import './loader.dart';

void main() {
  runApp(
//    App()
    /// Providers are above [App] instead of inside it, so that tests
    /// can use [App] while mocking the providers
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => TaskBrain()),
        ChangeNotifierProvider(create: (_) => Task()),
      ],
      child: App(),
    ),
  );
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TaskScreen(),
    );
  }
}