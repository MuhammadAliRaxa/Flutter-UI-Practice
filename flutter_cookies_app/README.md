# 🍪 Cookies Flutter App

A simple and elegant Flutter app that showcases a clean UI design for a cookies-themed storefront or catalog. Perfect for learning Flutter UI fundamentals and basic navigation.

## 📱 Screenshots

<p align="center">
  <img src="https://github.com/user-attachments/assets/917e83f6-4c84-4a36-b469-66b23c4dd513" width="200"/>
  <img src="https://github.com/user-attachments/assets/a79153d6-28df-40db-997c-702df6e51813" width="200"/>
  <img src="https://github.com/user-attachments/assets/f45c3eea-5f68-4623-a71a-a928feb090b3" width="200"/>
  <img src="https://github.com/user-attachments/assets/7e94f785-d695-4f80-99c2-494fc279a7ba" width="200"/>
</p>

## 🚀 Features

* Clean and minimal user interface
* Cookie catalog display with images, names, and prices
* Smooth scrolling and responsive design
* Custom font and color styling
* Flutter best practices for layout and structure

## 🛠️ Tech Stack

* **Flutter**
* **Dart**
* **Material Design**

## 📂 Project Structure

```
lib/
├── main.dart
├── screens/
│   └── home_screen.dart
├── widgets/
│   └── cookie_card.dart
├── models/
│   └── cookie.dart
└── assets/
    └── images/
```

## 📦 Getting Started

1. **Clone the repository:**

   ```bash
   git clone https://github.com/your-username/cookies_flutter_app.git
   cd cookies_flutter_app
   ```

2. **Get dependencies:**

   ```bash
   flutter pub get
   ```

3. **Run the app:**

   ```bash
   flutter run
   ```

## 📁 Assets

Make sure to add your cookie images in the `assets/images/` folder and declare them in `pubspec.yaml`:

```yaml
flutter:
  assets:
    - assets/images/
```

## ✨ UI Highlights

* Custom `CookieCard` widget for modular UI
* Use of `ListView`, `Container`, `Column`, and `Row` for layout
* Lightweight and beginner-friendly codebase

## 📌 TODO (Optional)

* Add product detail page
* Implement cart functionality
* Add animations or transitions
* Integrate backend or Firebase
