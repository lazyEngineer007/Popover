# 📱 PopoverPresentationExample

This project demonstrates how to present a **Popover** in iOS using `UIPopoverPresentationController` with a **custom popup view controller**.

---

## ✨ Features

- Present a popup (popover) with a custom design.
- Tapping the close button inside the popup dismisses it.
- Popup size dynamically adjusts based on the content (`preferredContentSize`).
- Tap gesture handling on a `UIImageView` to trigger actions.

---

## 🛠 Project Structure

### `PopupControllerViewController.swift`
- `descLabel`: A `UILabel` to display description text.
- `closeAction`: A tappable `UIImageView` for closing the popup.
- Dynamically calculates the preferred content size.
- Handles tap gestures to dismiss the popup.

### `ViewController.swift`
- Displays a button to trigger the popover.
- Configures `UIPopoverPresentationController` for presentation.
- Forces `.none` adaptive presentation style for consistent popover behavior across devices.

---

## ⚙️ How It Works

1. Tap the button in `ViewController`.
2. It triggers `popOverActionButton(_:)`.
3. A storyboard instance of `PopupControllerViewController` is created.
4. Sets the `modalPresentationStyle` to `.popover`.
5. Configures the popover's `sourceView` and `sourceRect`.
6. Presents the popover.
7. User taps the close (`UIImageView`), and the popup dismisses.

---

## 📋 Requirements

- iOS 11.0+
- Swift 5
- Xcode 14 or later

---

## 🚀 Setup Instructions

1. Clone or download this repository.
2. Open the project in **Xcode**.
3. In `Main.storyboard`:
   - Create a `UIViewController` and set its **Storyboard ID** to `PopupControllerViewController`.
   - Add a `UILabel` (connect it to `descLabel`) and a `UIImageView` (connect it to `closeAction`).
   - Set `isUserInteractionEnabled = true` for `closeAction` (`UIImageView`).
4. Add a button in `ViewController` and link it to `popOverActionButton(_:)`.
5. Run the app on a device or simulator.

---

## 📝 Notes

- On iPhone, popover may adapt and present as full-screen by default.
- Setting `adaptivePresentationStyle(for:) -> .none` ensures popover behavior on all devices.
- Make sure `UIImageView` (`closeAction`) has `User Interaction Enabled` set to true.

---

## 📸 Screenshots

| Main View | Popup View |
| :-------: | :--------: |
| (Screenshots/MainView.png) | (Screenshots/Popover.png) |

---
