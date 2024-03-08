<a name="readme-top"></a>

<!-- Top Links Bar -->

[![LinkedIn][linkedin-shield]][linkedin-url]
[![Twitter][twitter-shield]][twitter-url]
[![Instagram][instagram-shield]][instagram-url]

<!-- PROJECT LOGO -->
<br />
<div align="center">
  <img src="images/logo.png" alt="Logo" width="80" height="80">
  <h1 align="center">Trainee Messenger</h1>

<!-- PROJECT desc -->
  <p align="left">
  :pig2:
      This is a replica of a messenger for practice purposes and to get a better understanding of the matter. 
      It was one of my first Flutter projects and the focus here was more on the functionality of communication between different devices and chatRooms. As a result, many of the approaches that Flutter offers were not applied here or were neglected. 
  </p>

  <!-- PROJECT link -->
  <p align="left">
    <a href="https://github.com/foxnoir/messenger"><strong>Explore the project »</strong></a>
    <br/>
  </p>
  </p>
    <br/>
  </p>

  <p align="left">
  Trainnee Messenger supports only (iOS) mobile, clone the appropriate branches mentioned below:
  </p>

<!-- Get started link link -->
  <p align="left">
    <a href="#getting-started"><strong>Getting Started »</strong></a>
    <br/>
  </p>
    <br/>
  </p>

</div>

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
      <li>
      <a href="#style-guide">Style Guide</a>
      <ul>
        <li><a href="#color-palette">Color Palette</a></li>
      </ul>
      <ul>
        <li><a href="#fonts">Fonts</a></li>
      </ul>
      <ul>
        <li><a href="#icons">Icons</a></li>
      </ul>
      <ul>
        <li><a href="#final-layout">Final Layout</a></li>
      </ul>
    </li>
    <li>
      <a href="#App-Demonstration">App Demonstration</a>
    </li>
    <li>
      <a href="#tech-stack">Tech Stack</a>
      <ul>
        <li><a href="#build-with">Build With</a></li>
      </ul>
      <ul>
        <li><a href="#Libraries-And-Tools"> Libraries And Tools</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
    </li>
    <li>
      <a href="#hide-generated-files">Hide Generated Files</a>
    </li>
    <li>
      <a href="#project-structure">Project Structure</a>
      <ul>
        <li><a href="#folder-structure">Folder Structure</a></li>
      </ul>
        <ul>
        <li><a href="#default-feature-first-structure"> Default Feature-first structure</a></li>
      </ul>
      <ul>
        <li><a href="#Constants">Constants</a></li>
      </ul>
      <ul>
        <li><a href="#Data">Data</a></li>
      </ul>
      <ul>
        <li><a href="#Widgets">Widgets</a></li>
      </ul>
      <ul>
        <li><a href="#Routes">Routes</a></li>
      </ul>
      <ul>
        <li><a href="#Main">Main</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#References-to-the-images-used">References to the images used</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>

</p>
  <br/>
</p>

## Style Guide

### Color Palette

<img src="images/palette.jpg" alt="palette" width="65%" height="100%">

### Fonts

- [Default Flutter ios font (San Francisco)](https://developer.apple.com/fonts/)

### Icons

- [Default Flutter materials icons](https://api.flutter.dev/flutter/material/Icons-class.html)

### Final Layout

<img src="images/finalLayout.png" alt="layout" width="100%" height="100%">

  <p align="left">
    <a href="#References-to-the-images-used"><strong>References to the images used »</strong></a>
    <br/>
  </p>

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## App Demonstration

> :warning: **(german only)**

https://user-images.githubusercontent.com/95978076/200083313-cf531a3b-6c2c-4495-9085-6212818a285b.mp4

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Tech Stack

### Build With

- [![Flutter][flutter]][flutter-url]
- [![Dart][dart]][dart-url]
- [![Firebase][firebase]][firebase-url]

### Libraries And Tools

- [UserModelentification](https://firebase.google.com/docs/auth)
- [Cloud FirebaseFirestore](https://firebase.google.com/docs/FirebaseFirestore)
- [Cloud Storage Firebase](https://firebase.google.com/docs/storage)
- [Routing](https://api.flutter.dev/flutter/widgets/RouteObserver-class.html)
- [Theme](https://docs.flutter.dev/cookbook/design/themes) (basic)
- [Provider](https://github.com/rrousselGit/provider) (state management)
- [Validation](https://github.com/dart-league/validators)
- [Dark Theme Support](https://medium.flutterdevs.com/implement-dark-mode-in-flutter-using-provider-158925112bf9) (basic)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Getting Started

- Download or clone this repo by using the link or the SSH URL below:

```
https://github.com/foxnoir/messenger
```

```
git@github.com:foxnoir/messenger.git
```

- Go to project root and execute the following command in console to get the required dependencies:

```
flutter pub get
```

 <br/>
```
flutter packages pub run build_runner build --delete-conflicting-outputs
```

- Create a new Firebase project and connect the app with it. For clearer instructions go to: [Connect flutter with firebase »](https://firebase.google.com/docs/flutter/setup?platform=ios)

- Enable Firebase authentication with email and password. For clearer instructions go to: [Firebase authentication »](https://firebase.google.com/docs/auth)

- Create a Firestore Database. For clearer instructions go to: [Create a Firebase firestore database »](https://www.kodeco.com/26435435-firestore-tutorial-for-flutter-getting-started)

- Create a Cloud Storage. For clearer instructions go to: [Create a Firebase cloud storage »](https://www.kodeco.com/26435435-firestore-tutorial-for-flutter-getting-started)

- Open - [XCode Simulator](https://developer.apple.com/documentation/xcode/running-your-app-in-simulator-or-on-a-device) and start 2 devices or start 1 on your iPhone via Xcode and 1 in the simulator. For clearer instructions go to: [Running your app in Simulator or on a device »](https://developer.apple.com/documentation/xcode/running-your-app-in-simulator-or-on-a-device)

- Register a new user on each device. (User A on device A, User B on device B).

- Add user B as a new contact on device A using the email address you registered user B with and favorite this one under `All Contacts`.

- Go to `Favorites` and click on the user's profile picture.

- Start chatting.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Hide Generated Files

In-order to hide generated files, navigate to `Android Studio` -> `Preferences` -> `Editor` -> `File Types` and paste the below lines under `ignore files and folders` section:

```
*.inject.summary;*.inject.dart;*.g.dart;
```

In Visual Studio Code, navigate to `Preferences` -> `Settings` and search for `Files:Exclude`. Add the following patterns:

```
###/*.inject.summary
###/*.inject.dart
###/*.g.dart
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Project Structure

The project was structured according to the feature-first approach. A feature here is more what the user does and not what he sees.

<p align="left">
  <a href="https://codewithandrea.com/articles/flutter-project-structure/"><strong>Learn more about feature-first »</strong></a>
  <br/>
</p>

### Folder Structure

The core folder structure which flutter provides:

```
flutter-app/
|- android
|- assets
|- build
|- images
|- ios
|- lib
|- test
|- web
```

Project folder structure:

```
lib/
|- constants/
|- features/
|- global_widgets/
|- routing/
|- utils/
|- main.dart
```

### General feature structure

_NOTE 1:_ Not every feature always has all 3 layers.
<br/>
_NOTE 2:_ Not every presentation layer always has a widgets folder. This folder contains only widgets that are used exclusively by the respective feature.

```
feature/
|- data
|- domain
|- presentation/
  |- widgets
```

- data: data sources, repositories, and data transfer objects– DTOs

- domain: models

- presentation: states, widgets, and controllers

Since the project was only restructured after the fact for practice purposes to develop a better understanding of feature-first, the domain and application layers were often omitted. The existing code was simply sourced out into new folders and files. No new code was written.

### Features

```
features/
|- auth/
|- chat/
|- contact_managment/
|- user/
|- user_settings/
```

### Constants

This directory contains all the application level constants. A separate file is created for each type as shown in example below:

```
constants/
|- app_theme.dart
|- dimens.dart
|- endpoints.dart
|- preferences.dart
|- strings.dart
```

### Data

All the business logic of your application will go into this directory, it represents the data layer of your application. It is sub-divided into three directories `local`, `network` and `sharedperf`, each containing the domain specific logic. Since each layer exists independently, that makes it easier to unit test. The communication between UI and data layer is handled by using central repository.

```
data/
|- local/
    |- constants/
    |- datasources/
    |- app_database.dart

|- network/
    |- constants/
    |- exceptions/
    |- rest_client.dart

|- sharedpref
    |- constants/
    |- shared_preference_helper.dart

|- repository.dart

```

### Stores

The store is where all your application state lives in flutter. The Store is basically a widget that stands at the top of the widget tree and passes it's data down using special methods. In-case of multiple stores, a separate folder for each store is created as shown in the example below:

```
stores/
|- login/
    |- login_store.dart
    |- form_validator.dart
```

### UI

This directory contains all the ui of your application. Each screen is located in a separate folder making it easy to combine group of files related to that particular screen. All the screen specific widgets will be placed in `widgets` directory as shown in the example below:

```
ui/
|- login
   |- login_screen.dart
   |- widgets
      |- login_form.dart
      |- login_button.dart
```

### Utils

Contains the common file(s) and utilities used in a project. The folder structure is as follows:

```
utils/
|- encryption
   |- xxtea.dart
|- date
  |- date_time.dart
```

### Widgets

Contains the small widgets that are shared across multiple fetures. For example buttons or alerts.

```
global_widgets/
|- alert.dart
|- change_theme_button.dart
|- raised_gradient_button.dart
```

### Routes

This file contains all the routes for your application.

```dart
import 'package:flutter/material.dart';

import 'ui/home/home.dart';
import 'ui/login/login.dart';
import 'ui/splash/splash.dart';

class Routes {
  Routes._();

  //static variables
  static const String splash = '/splash';
  static const String login = '/login';
  static const String home = '/home';

  static final routes = <String, WidgetBuilder>{
    splash: (BuildContext context) => SplashScreen(),
    login: (BuildContext context) => LoginScreen(),
    home: (BuildContext context) => HomeScreen(),
  };
}
```

### Main

This is the starting point of the application. All the application level configurations are defined in this file i.e, theme, routes, title, orientation etc.

```dart
import 'package:boilerplate/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'constants/app_theme.dart';
import 'constants/strings.dart';
import 'ui/splash/splash.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
    DeviceOrientation.landscapeRight,
    DeviceOrientation.landscapeLeft,
  ]).then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Strings.appName,
      theme: themeData,
      routes: Routes.routes,
      home: SplashScreen(),
    );
  }
}
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Usage

Use this space to show useful examples of how a project can be used. Additional screenshots, code examples and demos work well in this space. You may also link to more resources.

_For more examples, please refer to the [Documentation](https://example.com)_

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## References to the images used

- Tinker Bell: Could not reconstruct the creator.
- [Audrey Hepburn](https://www.gala.de/stars/starportraets/audrey-hepburn-21355190.html) -> © Getty Images
- [Coco Channel](https://www.westwing.de/inspiration/trends/designer/die-7-stil-regeln-von-coco-chanel/)
- [Empress Elisabeth](https://www.bunte.de/royals/royals-weltweit/oesterreichischer-adel/kaiserin-elisabeth-1898-ihre-schwester-liebte-einen-buergerlichen-und-wurde-fuer-geisteskrank.html) -> © Getty Images; IMAGO / Heinz Gebhardt
- [Hemingway](https://dzieje.pl/kultura-i-sztuka/kwartalnik-strand-magazine-opublikuje-nieznane-opowiadanie-hemingwaya) -> © PAP/CAF
- [Marie Antoinette 1](https://adelswelt.de/koenigin-marie-antoinette-unglaubliche-fakten/) -> © picture-alliance / akg-images | akg-images
- [Marie Antoinette 2](https://www.welt.de/geschichte/kopf-des-tages/article231140093/Marie-Antoinette-Gier-nach-Luxus-Spielen-und-Sex.html) -> © picture alliance / Heritage Image
- [Marie Curie](https://www.docusign.de/blog/marie-curie-die-einzige-auf-der-welt-mit-zwei-nobelpreisen-zwei-disziplinen)
- Pola Negri: No longer traceable which photo was used.
- [Martin Luther King](https://www.nobelprize.org/prizes/peace/1964/king/facts/)
- Freddy Mercury: No longer traceable which photo was used.
- turquoise background: Could not reconstruct the creator.
- [puruple background](https://www.istockphoto.com/de/foto/universum-gef%C3%BCllt-mit-sternen-nebel-und-galaxie-gm524554638-92236169)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Changelog

  <p align="left">
    <a href="https://github.com/foxnoir/messenger/blob/main/CHANGELOG.md"><strong>Check changes »</strong></a>
    <br/>
  </p>
  </p>
    <br/>
  </p>

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## License

Distributed under the [MIT License](https://github.com/foxnoir/messenger/blob/main/LICENSE.txt).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Acknowledgments

- [Feature-first vs Layer-first 1](https://kodytechnolab.com/blog/layer-first-or-feature-first-flutter-project-structure/)
- [Feature-first vs Layer-first 2](https://codewithandrea.com/articles/flutter-project-structure/)
- [Connect flutter with firebase](https://firebase.google.com/docs/flutter/setup?platform=ios)
- [Running your app in Simulator or on a device](https://developer.apple.com/documentation/xcode/running-your-app-in-simulator-or-on-a-device)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- Top Bar Links -->

[license-shield]: https://img.shields.io/github/license/othneildrew/Best-README-Template.svg?style=for-the-badge
[license-url]: https://github.com/othneildrew/Best-README-Template/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/tanja-polz-5636401a5/
[twitter-shield]: https://img.shields.io/badge/Twitter-%231DA1F2.svg?style=for-the-badge&logo=Twitter&logoColor=white
[twitter-url]: https://twitter.com/_foxnoir_?lang=de
[instagram-shield]: https://img.shields.io/badge/Instagram-%23E4405F.svg?style=for-the-badge&logo=Instagram&logoColor=white
[instagram-url]: https://www.instagram.com/_foxnoir_/

<!-- Tech Stach Links-->

[flutter]: https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white
[flutter-url]: https://flutter.dev/
[dart]: https://img.shields.io/badge/dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white
[dart-url]: https://dart.dev/
[flutter-url]: https://flutter.dev/
[firebase]: https://img.shields.io/badge/Firebase-039BE5?style=for-the-badge&logo=Firebase&logoColor=white
[firebase-url]: https://firebase.google.com/
