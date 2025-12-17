Union Shop Flutter App — Requirements

This document defines the functional and technical requirements for the Union Shop Flutter application, based on the coursework brief and the current implementation.

1. Project Overview

Project name: Union Shop

Framework: Flutter

Target platforms: Web & Mobile (responsive layouts)

Navigation: Flutter Navigator with named routes

State handling: Local widget state (StatefulWidget)

Data source: In-memory mock data (no backend required)

2. Core Pages & Navigation (Basic Criteria)
2.1 Home & Header

A reusable header component (AppHeader) must appear on all main pages.

Header includes:

Logo (navigates to Home)

Search icon (navigates to Search page)

Cart icon (navigates to Cart page)

Header must not break navigation when reused across pages.

2.2 Collections Page

Displays a list of product collections:

Election Discounts

Pride Collection

Essential Range

Graduation

Each collection item must:

Be tappable

Navigate to the corresponding collection page

Footer (AppFooter) must be displayed at the bottom.

2.3 Collection Pages

Each collection page displays products using a grid layout.

Products include:

Image

Name

Price

Grid layout must:

Be responsive

Avoid overflow on different screen sizes

2.4 Product Page

Displays:

Product image

Product name

Price

Quantity selector

Add to Cart button

Adding a product must:

Add the item to the cart model

Show confirmation feedback (SnackBar)

3. Cart Functionality (Intermediate Criteria)
3.1 Cart Model

Cart items are stored in a shared in-memory list (cartItems).

Each cart item contains:

Name

Price

Image

Quantity

3.2 Cart Page

When cart is empty:

Display “Your cart is empty”

Hide checkout button

When cart contains items:

Display list of cart items

Allow quantity updates

Allow item removal

Display total price calculated dynamically.

Checkout button:

Clears the cart

Shows confirmation message

4. Search Functionality (Intermediate Criteria)
4.1 Search Page

Search page must contain:

AppBar with title “Search”

Search input field

Scrollable list of products

4.2 Search Behaviour

Typing into the search field must:

Filter products in real time

Be case-insensitive

If no results match:

Display “No products found”

4.3 Search Navigation

Tapping a search result must:

Navigate to the Product page

Pass the product image as a route argument

5. Footer Component

Footer must be reusable across pages.

Footer includes:

Opening hours

Help & information links

Email subscription input

Footer layout must:

Stack correctly on smaller screens

Avoid overflow

6. Responsiveness

Layouts must adapt to different screen widths:

Grid layouts adjust column count

Text and images must not overflow

Responsive widgets used:

LayoutBuilder

GridView

Expanded

Flexible

MediaQuery

7. Testing Requirements
7.1 Widget Tests

Widget tests must verify:

Collections Page

Page loads without crashing

AppBar title is visible

All collection categories are displayed

Footer is rendered

Search Page

Search page loads correctly

Search input field is visible

Products are displayed

Typing filters results

Tapping a result navigates to Product page

Cart Page

Empty cart message is shown when cart is empty

Checkout button hidden when cart is empty

Page loads without crashing

7.2 Test Constraints

Tests must use:

flutter_test

MaterialApp wrappers

No backend or database mocking required.

8. Technical Constraints

No external state-management libraries (Provider, Bloc, etc.)

No backend or API integration required

Minimal changes to existing architecture

Clear separation of:

Models

Views

Tests

9. Verification Checklist

Before submission, ensure:

App runs without errors

Navigation works across all pages

Cart functions correctly

Search filters products correctly

