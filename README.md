# MediTrack 💊

A comprehensive medication tracking and reminder app built with Flutter. MediTrack helps users manage their medications, set reminders, and maintain a complete history of their medication intake.

## Features ✨

- **User Authentication**: Secure login and account creation
- **Medication Management**: Add, edit, and delete medications
- **Smart Reminders**: Set custom reminder times and frequencies
- **Medication History**: Track your medication intake over time
- **User-Friendly Interface**: Clean, intuitive design with medical theme
- **Cross-Platform**: Works on Android, iOS, and Web

## Screenshots 📱

*Screenshots will be added soon*

## Getting Started 🚀

### Prerequisites

- Flutter SDK (>=3.0.0)
- Dart SDK (>=3.0.0)
- Android Studio / VS Code
- Chrome (for web development)

### Installation

1. Clone the repository
```bash
git clone https://github.com/yourusername/medi_track_app.git
cd medi_track_app
```

2. Install dependencies
```bash
flutter pub get
```

3. Run the app
```bash
# For web
flutter run -d chrome

# For Android
flutter run -d android

# For iOS
flutter run -d ios
```

## Project Structure 📁

```
lib/
├── main.dart                    # App entry point
├── login_screen.dart           # User authentication
├── create_account_screen.dart  # Account registration
├── dashboard_screen.dart       # Main dashboard
├── add_medication_screen.dart  # Add new medications
├── history_screen.dart         # Medication history
├── reminder_settings_screen.dart # Reminder configuration
└── reset_password_screen.dart  # Password recovery
```

## Features Overview 🔍

### Authentication System
- Secure login with email and password
- Account creation for new users
- Password reset functionality

### Medication Management
- Add medications with dosage information
- Set custom reminder frequencies (once daily, twice daily, etc.)
- Configure specific reminder times
- Add optional notes for each medication

### Dashboard
- Clean, medical-themed interface
- Quick access to all app features
- Navigation between different screens
- User profile management

### History Tracking
- View past medication intake
- Track adherence to medication schedules
- Historical data for healthcare providers

## Technology Stack 🛠️

- **Framework**: Flutter
- **Language**: Dart
- **State Management**: StatefulWidget
- **UI Components**: Material Design
- **Storage**: SharedPreferences (for local data)
- **Navigation**: Flutter Navigator

## Color Scheme 🎨

- **Primary Blue**: #2196F3
- **Background**: #E0FFFF (Light mint-green/cyan)
- **Cards**: White with rounded corners
- **Text**: Black87 for primary text, Black54 for secondary

## Contributing 🤝

1. Fork the project
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## Future Enhancements 🔮

- [ ] Push notifications for medication reminders
- [ ] Integration with healthcare providers
- [ ] Medication interaction warnings
- [ ] Barcode scanning for medication entry
- [ ] Data export functionality
- [ ] Multi-language support
- [ ] Dark mode theme
- [ ] Medication refill reminders

## License 📄

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact 📧

Your Name - your.email@example.com

Project Link: [https://github.com/yourusername/medi_track_app](https://github.com/yourusername/medi_track_app)

## Acknowledgments 🙏

- Flutter team for the amazing framework
- Material Design for UI guidelines
- Healthcare professionals for feature insights

---

**Note**: This app is for medication tracking purposes only and should not replace professional medical advice. Always consult with healthcare providers for medical decisions.
