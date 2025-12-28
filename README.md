SalatWatch - Android APK (Flutter) - Ready Skeleton
==================================================

What's included:
- pubspec.yaml       : Flutter project config (minimal).
- lib/main.dart      : Simple digital watch UI in Flutter (shows time + date).
- assets/icon_placeholder.txt : Replace with a real PNG as assets/icon.png if you want a custom app icon.
- .github/workflows/build_apk.yml : GitHub Actions workflow that installs Flutter, runs `flutter create` to scaffold Android, and builds release APK.

Important notes BEFORE building:
1) This is a lightweight, ready-to-edit Flutter skeleton. The workflow runs `flutter create --platforms=android .`
   which will generate the Android platform folders on the CI runner before building. You can also run the same command locally:
     flutter create --platforms=android .

2) To build locally (recommended for first test):
   - Install Flutter SDK and Android SDK (Android Studio).
   - In project root run:
      flutter pub get
      flutter create --platforms=android .
      flutter build apk --release
   - The release APK will be in: build/app/outputs/flutter-apk/app-release.apk

3) If you want a custom app icon, replace `assets/icon_placeholder.txt` with a 512x512 PNG and update Android launcher icons accordingly (or use the flutter_launcher_icons package).

4) GitHub Actions:
   - Workflow uses subosito/flutter-action to set up Flutter.
   - Make sure your repo has required secrets if you plan to upload artifacts (not necessary to just build APK).

5) Customize the app:
   - Edit lib/main.dart to change UI, languages (Urdu/Arabic), and features (Hijri conversion).

Good luck! If you want, I can also prepare a full Android manifest and launcher icons — tell me and I'll extend the zip.
# Shifa_by_Shuaib_Noori_Clinic_v1
