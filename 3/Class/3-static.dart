/*
============================================
Lesson: Understanding static in Dart
============================================

🔹 WHAT IS `static`?

In Dart, `static` means the member belongs to the **class itself**, not to an object instance.

That means:
- You don’t need to create an object to use it
- It’s shared across all instances
- Common use cases: config, constants, utility methods, counters, global state
*/

// ============================================
// ✅ Example 1: Student & School
// ============================================

class Student {
  String name;
  static String schoolName = 'Green Valley School'; // shared value

  Student(this.name);

  void introduce() {
    print('My name is $name and I study at $schoolName');
  }

  static void changeSchool(String newName) {
    schoolName = newName;
    print('School name changed to: $schoolName');
  }
}

// ============================================
// ✅ Example 2: AppColors + ThemeManager
// ============================================

class AppColors {
  static const String primary = 'Blue';
  static const String secondary = 'Orange';
  static const String backgroundLight = 'White';
  static const String backgroundDark = 'Black';
  static const String textLight = 'Black';
  static const String textDark = 'White';

  // TODO 1: Add static warning color
  static const String warning = 'Red';
}

class ThemeManager {
  static String themeMode = 'light'; // or 'dark'

  static void switchTheme() {
    themeMode = (themeMode == 'light') ? 'dark' : 'light';
  }

  static String getBackground() {
    return (themeMode == 'light')
        ? AppColors.backgroundLight
        : AppColors.backgroundDark;
  }

  static String getTextColor() {
    return (themeMode == 'light') ? AppColors.textLight : AppColors.textDark;
  }

  // TODO 2: Add static getter to check if theme is dark
  static bool get isDark => themeMode == 'dark';
}

// ============================================
// ✅ Theme Info Printer (Optional Utility)
// ============================================

class ThemeInfo {
  static void show() {
    print('Theme: ${ThemeManager.themeMode}');
    print('Primary: ${AppColors.primary}');
    print('Secondary: ${AppColors.secondary}');
    print('Background: ${ThemeManager.getBackground()}');
    print('Text: ${ThemeManager.getTextColor()}');
    print('Dark Mode? ${ThemeManager.isDark}');
  }
}

// ============================================
// Main Function
// ============================================

void main() {
  print('== Student Example ==');
  Student s1 = Student('Ali');
  Student s2 = Student('Sara');

  s1.introduce();
  s2.introduce();

  Student.changeSchool('Future Stars Academy');

  s1.introduce();
  s2.introduce();

  print('\n== Theme Example ==');
  ThemeInfo.show();

  print('\nSwitching theme...');
  ThemeManager.switchTheme();
  ThemeInfo.show();
}
