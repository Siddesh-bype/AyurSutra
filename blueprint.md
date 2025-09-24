
# AyurSutra - Flutter Mobile App Development Blueprint

## Overview

This document outlines the plan and progress for the development of the AyurSutra Flutter mobile application. The app will provide a platform for booking Ayurvedic Panchakarma therapies, accessing information about treatments, and connecting with practitioners.

## Design System & Theme

*   **Color Scheme:** Orange/saffron gradients, green accents, warm earth tones.
*   **Typography:** `Lora` for headings, `Inter` for body text.
*   **Visual Elements:** Gradient backgrounds, botanical icons, Sanskrit text, soft shadows, and elevated cards.

## App Structure & Navigation

*   **Bottom Navigation Bar:**
    *   Home
    *   Therapies
    *   Centers
    *   Knowledge
    *   Profile
*   **Additional Screens:**
    *   Booking
    *   Notifications
    *   Authentication (Login/Register)

## Technical Implementation

*   **Dependencies:**
    *   `flutter_native_splash`
    *   `google_fonts`
    *   `flutter_staggered_animations`
    *   `lottie`
    *   `provider`
    *   `http`
    *   `cached_network_image`
    *   `shared_preferences`
    *   `google_maps_flutter`
    *   `geolocator`
    *   `url_launcher`
    *   `table_calendar`
    *   `animations`
*   **Folder Structure:** A well-organized folder structure will be maintained to separate concerns and improve maintainability.

## Development Plan

1.  **Project Setup:**
    *   [x] Create the project structure.
    *   [x] Add the required dependencies to `pubspec.yaml`.
2.  **Core UI & Navigation:**
    *   [ ] Create the main entry point of the application (`lib/main.dart`).
    *   [ ] Define the main app widget, including the theme and navigation (`lib/app.dart`).
    *   [ ] Define the color palette, text styles, and app constants.
    *   [ ] Create the data models.
3.  **Screen Implementation:**
    *   [ ] Implement the Home screen.
    *   [ ] Implement the Therapies screen.
    *   [ ] Implement the Centers screen.
    *   [ ] Implement the Knowledge screen.
    *   [ ] Implement the Profile screen.
    *   [ ] Implement the Booking screen.
4.  **Component Implementation:**
    *   [ ] Create reusable UI components for therapy cards, doctor cards, center cards, etc.
5.  **Service Integration:**
    *   [ ] Implement API service for data fetching.
    *   [ ] Implement location service for maps and distance calculation.
    *   [ ] Implement notification service for push notifications.
6.  **Authentication:**
    *   [ ] Implement authentication flow with OTP and social login.
7.  **Finishing Touches:**
    *   [ ] Add animations and transitions.
    *   [ ] Implement dark/light theme toggle.
    *   [ ] Ensure accessibility features are implemented.
    *   [ ] Perform thorough testing and bug fixing.
