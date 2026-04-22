# assignment_04


# Flutter Collections  UI

## Description
This project is a Flutter assignment created as part of an intern interview task.  
The objective is to build a screen that displays multiple product collections using an accordion-style UI.

Each collection can be expanded or collapsed to show its product images.

---

## Features
- Scrollable list of collections
- Accordion expand/collapse behavior
- Only one collection open at a time
- Horizontal image preview with +N overlay
- Expanded view shows images vertically
- Clean and beginner-friendly Flutter code
- Reusable widgets and proper folder structure

---

## Folder Structure
lib/
├── main.dart
├── screens/
│ └── collection_screen.dart
├── widgets/
│ └── collection_card.dart
└── models/
└── collection_model.dart


---

## Approach
- Used `StatefulWidget` to manage expand/collapse state.
- Maintained an `expandedIndex` variable to ensure only one collection is expanded at a time.
- Created a reusable `CollectionCard` widget to keep UI code clean.
- Used a model class to define the data structure for collections.
- Loaded local images using `Image.asset`.

---

## How to Run the Project
1. Clone the repository
2. Navigate to the project folder
3. Install dependencies
4. Run the app
