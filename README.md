# BMI Calculator 💪

A modern, sleek, and user-friendly Body Mass Index (BMI) calculator built with Flutter. This application provides a seamless experience for users to track their health metrics with an intuitive and visually appealing interface.

## ✨ Features

- **🎨 Elegant UI:** Beautiful gradient splash screen and a modern, color-themed interface.
- **⚧️ Gender Selection:** Start by choosing your gender with large, tappable cards.
- **🎚️ Interactive Input:**
  - Adjustable weight and age with intuitive `+`/`-` buttons.
  - Smooth sliding selector for height built with `syncfusion_flutter_sliders`.
- **🧮 Real-time Calculation:** Instant BMI calculation using the standard formula.
- **📊 Detailed Results Dialog:** View your BMI score, category, and a summary of all input data in a clean, organized popup.
- **🛣️ Professional Navigation:** Efficient app flow using Flutter's named routing and argument passing.

## 🚀 Getting Started

### Prerequisites

Before you begin, ensure you have the following installed:
- **Flutter SDK** (v3.0.0 or newer)
- **Dart SDK** (comes bundled with Flutter)
- An IDE: **Android Studio**, **IntelliJ IDEA**, or **VS Code** with the Flutter plugin.
- A connected **Android/iOS device** or emulator.

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/YOUR_USERNAME/bmi-calculator.git
   cd bmi-calculator
Install dependencies

bash
flutter pub get
Run the application

bash
flutter run
📁 Project Structure
text
lib/
├── main.dart                 # Application entry point
├── screens/
│   ├── splash_screen.dart   # Introductory splash screen
│   ├── genderpage.dart      # Screen for selecting gender
│   ├── datagive.dart        # Screen for inputting weight, height, and age
│   └── show_output.dart     # Function for displaying the results dialog
└── utills/
    ├── routes.dart          # Route generator function
    └── routesName.dart      # Constants for named routes
🔧 Usage
Splash Screen: The app launches with a branded loading screen.

Select Gender: Tap on either the "Male" or "Female" card to proceed.

Input Data:

Use the + and - buttons to adjust your Weight (in kg) and Age.

Drag the slider to set your Height (in cm).

View Results: Tap the "Continue" button to see a detailed dialog with your calculated BMI, health category, and input summary.

📦 Dependencies
This project uses the following key packages:

google_fonts: For easy and customizable typography.

syncfusion_flutter_sliders: For the interactive and customizable height slider.

See the full list in pubspec.yaml.

🧪 Calculating BMI
The app uses the standard BMI formula:

text
BMI = weight (kg) / (height (m))²
The result is categorized as follows:

Underweight: BMI < 18.5

Normal weight: 18.5 ≤ BMI < 25

Overweight: 25 ≤ BMI < 30

Obese: BMI ≥ 30

🤝 Contributing
Contributions are always welcome! Please feel free to fork this project, open an issue, or submit a pull request for any enhancements or bug fixes.

Fork the Project

Create your Feature Branch (git checkout -b feature/AmazingFeature)

Commit your Changes (git commit -m 'Add some AmazingFeature')

Push to the Branch (git push origin feature/AmazingFeature)

Open a Pull Request

📄 License
This project is licensed under the MIT License. See the LICENSE file for details.

👤 Developer
Muhammad Shayan khan


LinkedIn: www.linkedin.com/in/m-shayan-khan-249a6b25a

GitHub: [@Shayankhan28](https://github.com/Shayankhan28)

