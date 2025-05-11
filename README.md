![Swift](https://img.shields.io/badge/Swift-5.7-orange)
![iOS](https://img.shields.io/badge/iOS-14%2B-blue)
![SPM](https://img.shields.io/badge/SPM-Compatible-brightgreen)

# AnimatedVisibility

A lightweight SwiftUI package that makes it easy to animate views with built-in transitions like fade, scale, slide, and combinations.

## ✨ Features
- Smoothly show/hide views with animation
- Reusable `.animatedVisibility(...)` modifier
- Built-in transition presets like `.fadeAndScale`, `.slideAndFade`
- Supports iOS 14+

---

## 🚀 Installation

### Swift Package Manager

1. In Xcode, open your project
2. Go to `File > Add Packages...`
3. Enter the URL to this repository:
   ```
   https://github.com/andykale/animated-visibility-swiftui.git
   ```
4. Choose the latest version and add the package

---

## 🧩 Usage

### Import the module
```swift
import AnimatedVisibility
```

### Animate visibility of any view
```swift
@State private var isVisible = true

Text("Hello, world!")
    .animatedVisibility(isVisible, transitionStyle: .fadeAndScale)
```

### Toggle with animation
```swift
Button("Toggle") {
    withAnimation {
        isVisible.toggle()
    }
}
```

---

## 🔄 Available Transitions

```swift
.fade            // Opacity only
.scale           // Scale in/out
.slide           // Slide from side
.fadeAndScale    // Opacity + Scale combo
.slideAndFade    // Slide + Fade combo
.moveFromTop     // Move in from top edge
.moveFromBottom  // Move in from bottom edge
```

---

## 💡 Advanced Example
```swift
Text("Updated 5 minutes ago")
    .animatedVisibility(showLabel, animation: .spring(), transitionStyle: .slideAndFade)
```

---

## 📱 Platform Support
- ✅ iOS 14+
- ❌ Not currently supporting macOS, tvOS, or watchOS

---

## 📄 License
MIT License. Free to use and modify.

---

## 🙌 Contributions Welcome
If you have ideas for new transition styles or improvements, feel free to open a PR or issue!
