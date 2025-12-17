# Union Shop — Flutter Coursework

**Student Name:** ZahoorUllah Khan  
**Course:** BSc Computer Science  
**Module:** Programming Applications and Programming Languages (M30235)  
**University:** University of Portsmouth  

---

## 📱 Project Overview

This project is a **Flutter-based recreation of the University of Portsmouth Students’ Union Shop website**.  
It was developed as part of coursework to demonstrate understanding of Flutter fundamentals, responsive UI design, navigation, state handling, and basic e-commerce functionality.

The application focuses on a **mobile-first approach** while remaining responsive on larger screens (Flutter Web).

All product data is **hardcoded dummy data**, and **all images are stored locally** in the `assets/images` directory.

---

## ✨ Features

### ✅ Basic Features (Completed)
- Static Home page with banner and sections  
- Responsive navigation bar (desktop & mobile)  
- Footer displayed across major pages  
- Static product detail pages with dropdowns  
- Collections page with category navigation  
- Sale page with discounted items  
- Authentication UI (UI only)  
- About Us page  
- Print Shack About & Personalisation pages  

### ✅ Intermediate Features (Completed)
- Full navigation using **named routes**
- Product pages populated with hardcoded data
- Dynamic navigation between collections and products
- Fully working **shopping cart**
- Personalisation page with dynamic text input
- Responsive layouts for desktop and mobile

### ⚠️ Advanced Features (Partially Completed)
- Cart management (add, remove, update quantity, total calculation)
- Simulated checkout flow (no real payments)
- Widget testing implemented for multiple pages

---

## 🛒 Shopping Cart Functionality

- Add products to cart
- Remove products from cart
- Update product quantities
- Automatic total price calculation
- Simulated checkout confirmation
- Cart state updates dynamically

---

## 🧵 The Union Print Shack

Includes:
- About page
- Personalisation service page
- Dynamic text input fields
- Pricing information
- Terms & conditions
- Fully responsive layout

---

## 🔍 Search Functionality

- Search page with text input
- Live filtering of products
- Search results displayed as a list
- Clicking a result navigates to the product page

---

## 🧪 Testing

Widget tests have been implemented for:
- Collections page
- Search page
- Cart page

Most tests pass successfully and validate:
- Page rendering
- UI elements visibility
- Navigation
- Basic interactions

---


## 🚀 Getting Started

### Prerequisites
- Flutter SDK installed
- Chrome browser (for Flutter Web)
- Dart enabled

### Install & Run
From the project root:

```powershell
flutter pub get
flutter run -d chrome
