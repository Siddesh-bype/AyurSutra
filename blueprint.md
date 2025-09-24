# AyurSutra - Blueprint

## Overview

AyurSutra is a Flutter application designed to provide a serene and intuitive user experience for exploring the world of Ayurveda. The app will feature a beautiful and calming design, with a focus on readability and ease of use. It will incorporate a custom theme, elegant typography, and a refined component style to create a consistent and immersive user experience.

## Style, Design, and Features

### Theme

- **Color Palette**: The app will use a sophisticated color palette inspired by the provided images, with a focus on earthy tones, muted colors, and a few vibrant accents. The light theme will feature a soft, off-white background, while the dark theme will use a deep, calming charcoal color.

- **Typography**: The app will use the Google Fonts package to implement a custom font that is both elegant and easy to read. The typography will be designed to create a clear visual hierarchy, with different font sizes and weights for headings, subheadings, and body text.

- **Component Styles**: The app will feature custom styles for all of the main UI components, including the app bar, buttons, and cards. These styles will be designed to be consistent with the overall aesthetic of the app, and to create a seamless user experience.

### Light Theme

- **Primary Color**: #8B4513 (SaddleBrown)
- **Secondary Color**: #FFFAF0 (FloralWhite)
- **Accent Color**: #556B2F (DarkOliveGreen)
- **Background Color**: #FFFAF0 (FloralWhite)
- **Text Color**: #000000 (Black)

### Dark Theme

- **Primary Color**: #A0522D (Sienna)
- **Secondary Color**: #1C1C1C (Charcoal)
- **Accent Color**: #9ACD32 (YellowGreen)
- **Background Color**: #1C1C1C (Charcoal)
- **Text Color**: #FFFFFF (White)

## Plan and Steps

1.  **Update `pubspec.yaml`**: Add the `google_fonts` package to the `pubspec.yaml` file to enable the use of custom fonts.

2.  **Update `android/app/src/main/res/values/styles.xml`**: Modify the `styles.xml` file to ensure that the background color of the Android window matches the new theme.

3.  **Update `lib/main.dart`**: Replace the existing `MyApp` widget with a new `AyurSutraApp` widget that implements the new theme and design.

4.  **Run the app**: Run the app on an emulator to verify that the new theme and design have been applied correctly.