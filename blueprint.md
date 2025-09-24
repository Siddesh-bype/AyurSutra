# AyurSutra App Blueprint

## Overview

AyurSutra is a Flutter application designed to bring ancient Ayurvedic wisdom to a modern audience. The app provides information about Ayurvedic therapies, helps users find wellness centers, and offers a personalized experience through a clean and intuitive interface.

## Style and Design

The app follows a modern, clean, and visually appealing design language.

*   **Colors**: The color palette is inspired by nature and Ayurvedic traditions.
    *   `primaryGradient`: A soothing gradient from `scaffoldPrimary` to `primaryBackgroundEnd`.
    *   `accentOrange`: A vibrant orange used for buttons and highlights.
    *   `iconYellow`, `iconPink`, `iconGreen`, `iconBlue`: Colors for decorative icons.
    *   `textDarkGray`, `textLightGray`: For primary and secondary text.
    *   `darkSectionBackground`: A dark background for contrast.
*   **Typography**: The app uses the Poppins font for a clean and modern look.
    *   `heroTitle`: Large and bold for the main headline.
    *   `heroSubtitle`: A smaller, lighter subtitle.
    *   `cardTitle`, `cardSanskrit`, `cardDescription`: Styles for therapy cards.
    *   `drawerHeaderTitle`, `drawerHeaderSubtitle`, `drawerItem`: Styles for the navigation drawer.
*   **Iconography**: The app uses Material Design icons to enhance usability and visual appeal.

## Features

### Implemented Features

*   **Home Screen**: A comprehensive home screen with multiple sections:
    *   **Custom App Bar**: A custom app bar with a search bar and a drawer menu.
    *   **Hero Section**: An inspiring hero section with a call-to-action button.
    *   **Quote Card**: A card displaying an inspirational Ayurvedic quote.
    *   **Discovery Section**: A section to encourage users to explore therapies.
    *   **Statistics Section**: Displays key statistics about the platform.
    *   **Sacred Sciences Header**: Introduces the therapy section.
    *   **Therapies List**: A list of Ayurvedic therapies with details.
    *   **Next Screen**: A call-to-action to book a consultation.
    *   **Footer**: A footer with links and social media icons.
*   **Navigation**:
    *   **Bottom Navigation Bar**: For easy switching between the main sections of the app.
    *   **Navigation Drawer**: Provides access to additional sections and user-specific options.
*   **Data Handling**:
    *   **Therapy Service**: A service to load therapy data from a JSON file.
    *   **Therapy Model**: A data model to represent Ayurvedic therapies.

## Current Plan

*   **`lib/widgets/therapy_card.dart`**: Corrected the code to use the correct property names, `title` and `sanskrit`.
*   **`lib/widgets/therapies_list.dart`**: Corrected the code to use the correct property names, `title` and `sanskrit`.
*   **`lib/widgets/therapies_carousel.dart`**: Corrected the method name from `loadTherapies` to `getTherapies`.
*   **`lib/widgets/therapies_list.dart`**: Corrected the method name from `loadTherapies` to `getTherapies`.
*   **`lib/models/product.dart`**: Added `const` to the `Product` constructor to fix a `const` constructor invocation error.
