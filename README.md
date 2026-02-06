# Task: Swipe Image Gallery

This Flutter application displays one image at a time.  
Users can switch between images using horizontal swipe (drag) gestures.

## Features
- Displays a single image at a time
- Swipe left → Next image
- Swipe right → Previous image
- Circular navigation (wrap-around indexing)

## Concepts Used
- `GestureDetector`
- `onPanUpdate`
- State management with `setState()`
- Image rendering using `Image.asset`

## How to Run
1. Ensure Flutter is installed.
2. Run the following commands:

```
flutter pub get
flutter run -d chrome
```
