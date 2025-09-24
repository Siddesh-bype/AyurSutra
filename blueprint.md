
# AyurSutra App Blueprint

## Overview

This document outlines the design, features, and implementation plan for the AyurSutra Flutter application. The app aims to provide a modern and intuitive mobile experience for users interested in Ayurveda, with a focus on Panchakarma therapies.

## Style and Design

The application will adhere to the following design principles:

*   **Mobile-First Design:** The layout is optimized for mobile screen dimensions (375px - 428px width), with a responsive and adaptive UI.
*   **Color Palette:**
    *   **Primary Background:** Soft gradient from cream (`#F5F1E8`) to mint (`#E8F5F0`).
    *   **Dark Sections:** Deep charcoal (`#2A2A2A`).
    *   **Accent Orange:** Saffron orange (`#FF8C42`).
    *   **Card Background:** White with 90% opacity and soft shadows.
    *   **Text:** Dark gray (`#2C3E50`), Medium gray (`#7F8C8D`), White (`#FFFFFF`).
*   **Typography:**
    *   **Primary Font:** 'Playfair Display' for headings and titles.
    *   **Secondary Font:** 'Noto Sans Devanagari' for Sanskrit text.
    *   **Body Font:** A clean and readable sans-serif font.
*   **Iconography:** Material Design icons with a consistent style.

## Implemented Features

*   **Custom App Bar:** A dark-themed app bar with the app's logo, title in English and Hindi, and action buttons for notifications and user profile.
*   **Navigation Drawer:** A side-menu for navigating to different sections of the app.
*   **Hero Section:** A visually appealing hero section with a gradient background, decorative elements, and the app's tagline.
*   **Quote Card:** A card component to display inspirational quotes related to Ayurveda.
*   **Discovery Section:** A section to encourage users to explore the app's content.
*   **Statistics Section:** A section to display key statistics about Ayurveda and Panchakarma.
*   **Therapy Cards:** A vertically scrolling list of cards, each providing detailed information about a specific Panchakarma therapy.
*   **Bottom Navigation Bar:** An optional bottom navigation bar for quick access to the main screens.

## Current Plan

The current plan is to implement the new design provided in the `GEMINI.md` file.

**Steps:**

1.  **Update `pubspec.yaml`:** Ensure the `google_fonts` package is included.
2.  **Update `lib/constants/colors.dart` and `lib/constants/text_styles.dart`:** Define the new color palette and text styles.
3.  **Update `lib/main.dart`:** Implement the main app structure with the new theme and layout.
4.  **Update `lib/screens/home_screen.dart`:** Build the home screen using the new UI components.
5.  **Refactor widgets:** Create reusable widgets for the different UI components (e.g., `QuoteCard`, `TherapyCard`).
6.  **Review and refine:** Ensure the final implementation matches the design guide and is responsive and accessible.
