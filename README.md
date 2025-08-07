# 🪓 Hangman Flutter App 🎮🔠  

---

**A Category-Based Word Guessing Game with Offline Audio, Colorful Leaderboard, and Local Database Support**

<div align="center">
  <img src="https://github.com/CodderPrince/Hangman1/blob/main/hangman24/assets/appIcon.png" alt="Hangman App Icon" width="120" height="450" />
</div>

---

## ✨ App Overview

**Hangman Flutter App** is an engaging, offline-capable educational game where users guess hidden words from two fun categories: **Animals** and **Flowers**. Each animal and flower has its own **unique image** and **sound effect** to enhance the learning experience. It features a **colorful leaderboard**, persistent progress using **offline SQLite database**, and clean UI with animated elements — all powered by Flutter.

---

## 📱 UI Preview

<p align="center">
  <img src="https://github.com/CodderPrince/Hangman1/blob/main/UI/Screenshot_20250807_224716.png" width="260" />
  <img src="https://github.com/CodderPrince/Hangman1/blob/main/UI/Screenshot_20250807_224740.png" width="260" />
  <img src="https://github.com/CodderPrince/Hangman1/blob/main/UI/Screenshot_20250807_224752.png" width="260" />
  <img src="https://github.com/CodderPrince/Hangman1/blob/main/UI/Screenshot_20250807_224758.png" width="260" />
  <img src="https://github.com/CodderPrince/Hangman1/blob/main/UI/Screenshot_20250807_224805.png" width="260" />
  <img src="https://github.com/CodderPrince/Hangman1/blob/main/UI/Screenshot_20250807_224817.png" width="260" />
  <img src="https://github.com/CodderPrince/Hangman1/blob/main/UI/Screenshot_20250807_224830.png" width="260" />
  <img src="https://github.com/CodderPrince/Hangman1/blob/main/UI/Screenshot_20250807_224901.png" width="260" />
  <img src="https://github.com/CodderPrince/Hangman1/blob/main/UI/Screenshot_20250807_224921.png" width="260" />
  <img src="https://github.com/CodderPrince/Hangman1/blob/main/UI/Screenshot_20250807_224936.png" width="260" />
  <img src="https://github.com/CodderPrince/Hangman1/blob/main/UI/Screenshot_20250807_224955.png" width="260" />
  <img src="https://github.com/CodderPrince/Hangman1/blob/main/UI/Screenshot_20250807_225022.png" width="260" />
  <img src="https://github.com/CodderPrince/Hangman1/blob/main/UI/Screenshot_20250807_225033.png" width="260" />
</p>

---

## 🔥 Features

- ✅ **Two fun categories:** Animals 🐯 and Flowers 🌸  
- 🔤 **Guess-the-word gameplay** with hangman visuals  
- 🧠 **Hints displayed** for each word to help players  
- 🔊 **Category-specific sound effects** (e.g., lion roar for lion)  
- 🖼️ **Matching images** for each word  
- 💾 **Offline storage** of progress and leaderboard using `sqflite`  
- 🌈 **Random color** background for each leaderboard entry  
- 📊 **Score tracking & leaderboard system**  
- 🎮 **Play again button** with fun sound  
- 🧏 Text-to-speech-like experience with sounds per word  
- 🎨 Beautiful UI built with `flutter_animate`  
- ⚡ Fast performance, minimal APK size  
- 🔒 Works completely **offline**  
- 🛠️ Built using latest stable Flutter SDK (3.6.0+)

---

## 📦 Tech Stack

| Tech | Description |
|------|-------------|
| 🎯 Flutter | Cross-platform app framework |
| 🧪 Dart | Programming language used |
| 📁 sqflite | Local SQLite storage |
| 📚 shared_preferences | To store simple progress locally |
| 🔊 audioplayers | To play category sound and effects |
| 🧩 flutter_animate | To create smooth UI animations |
| 🖼️ Asset Management | Images and sounds for each word |
| 📱 Android Studio | Development environment |

---

## 📥 APK Download

> 🔗 [**Download APK from Google Drive**](https://drive.google.com/file/d/1HrxkYXZ5w39tL741GRARccA9kVoLC6yf/view?usp=sharing)

> No internet required to play — just install and enjoy!

---

## 🛠️ How to Run the Project (for Developers)

1. ✅ **Install Flutter SDK** (3.6.0 or later):  
   [Install Flutter](https://docs.flutter.dev/get-started/install)

2. ✅ **Clone the repository**
```bash
git clone https://github.com/CodderPrince/Hangman1.git
cd Hangman1
````

3. ✅ **Get dependencies**

```bash
flutter pub get
```

4. ✅ **Run the app**

```bash
flutter run
```

5. ✅ **Build APK for production**

```bash
flutter build apk --release
```

> Open in Android Studio → Run on Emulator or USB Device

---

## 📁 Important Project Info

### App Info:

```yaml
name: hangman19
description: A new Flutter project.
publish_to: 'none'
version: 1.0.0+1
```

### Main Assets:

```
assets/
├── images/
│   ├── animal/
│   ├── flower/
├── sounds/
│   ├── animal_sounds/
│   ├── flower_sounds/
│   ├── correct.mp3
│   ├── wrong.mp3
│   ├── play_again.mp3
```

### Dependencies Used:

```yaml
dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.8
  shared_preferences: ^2.2.2
  intl: ^0.20.1
  sqflite: ^2.4.1
  path: ^1.9.0
  uuid: ^4.1.0
  audioplayers: ^6.5.0
  flutter_animate: ^4.5.2
```

---

## 🧠 Educational Use Case

> Designed for kids, students, or language learners who want to improve vocabulary in a **fun and interactive** way.
> Animal and Flower categories include **visual and audio aids** for immersive learning.

---

## 💬 Developer Info

> 👨‍💻 **Md. An Nahian Prince**
> Department of CSE, Begum Rokeya University, Rangpur
> ID: 12105007
> 🌐 [GitHub](https://github.com/CodderPrince)

---

## 📂 Repository

> 🔗 [Hangman Flutter Game GitHub Repository](https://github.com/CodderPrince/Hangman1)

---

## 🔐 License

This project is **open-source** and free to use for educational or personal purposes.
Feel free to fork, contribute, or build upon it!

---

⭐️ *If you like this project, give it a star*
📤 *Share with others who love creative educational apps built in Flutter*

