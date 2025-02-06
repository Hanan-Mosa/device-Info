# Device Info

This  application retrieves and displays detailed information about the device it's running on, including the device model,the operating system version.

## Features

*   **Comprehensive Device Information:** Displays the device model, a more detailed model identifier (product name, model name, etc., depending on the platform), and the operating system version.
*   **Cross-Platform Support:** Works on Android, iOS, Windows, macOS, and Linux.

## Getting Started

1.  **Prerequisites:**
    *   Flutter SDK installed.
    *   Android Studio (for Android development) or Xcode (for iOS development) if you intend to test on physical devices.

2.  **Installation:**
    *   Clone this repository
     ```bash
      git clone https://github.com/Hanan-Mosa/device-Info
    ```
    *   Get Dependancies
    ```bash
      flutter pub get
    ```
3.  **Run**
    ```bash
         flutter run
    ```


## Code Explanation

The code uses the `device_info_plus` plugin to retrieve device information.  It checks the platform and then uses the appropriate class (`AndroidDeviceInfo`, `IosDeviceInfo`, `WindowsDeviceInfo`, etc.) to get the relevant details. The information is retrieved asynchronously in the `initState` method of the `StatefulWidget` and then displayed using `setState` to update the UI.

## Platform-Specific Notes

*   **Android:** The `AndroidDeviceInfo` class provides access to various Android-specific details.
*   **iOS:** The `IosDeviceInfo` class provides information about iOS devices.
*   **Windows:** The `WindowsDeviceInfo` class retrieves information about Windows systems.
*   **macOS:** The `MacOsDeviceInfo` class is used to get macOS details.
*   **Linux:** The `LinuxDeviceInfo` class provides access to Linux system information.

## Screenshots ()

![device_info](https://github.com/user-attachments/assets/1580cee8-9eb8-4b01-8240-ce4350605794)

