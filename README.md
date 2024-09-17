# Flutter Router Abstraction Package

This package provides a simple and efficient way to handle routing in Flutter applications using the Go Router library.

## Installation

To install this package, add the following line to your `pubspec.yaml` file:

```yaml
dependencies:
    flutter_router_abstraction: ^1.0.0
```

Then, run `flutter pub get` to fetch the package.

## Usage

1. Import the package:

```dart
import 'package:flutter_router_abstraction/flutter_router_abstraction.dart';
```

2. Define your routes:

```dart
final routes = [
    RouteDefinition(
        path: '/',
        builder: (context) => HomePage(),
    ),
    RouteDefinition(
        path: '/profile',
        builder: (context) => ProfilePage(),
    ),
    // Add more routes as needed
];
```

3. Initialize the router:

```dart
final router = Router(routes: routes);
```

4. Navigate to a specific route:

```dart
router.navigateTo(context, '/profile');
```

That's it! You can now easily handle routing in your Flutter application using the Go Router abstraction package.

For more information, please refer to the [documentation](https://github.com/flutter_router_abstraction/docs).
