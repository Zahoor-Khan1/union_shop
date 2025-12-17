# Union Shop Coursework — LLM Prompt

## Project Context
This is a Flutter web application for a University of Portsmouth Union Shop.
The project includes multiple pages such as Home, Collections, Product pages,
Search, Cart, and About pages. The app uses named routes and standard
`Navigator.pushNamed` navigation.

The goal is to incrementally improve the app while keeping changes small,
clear, and suitable for coursework marking.

---

## General Rules
- Make **small, incremental changes** suitable for Git commits.
- Do **not refactor unrelated files**.
- Prefer Flutter built-in widgets.
- Keep UI responsive for desktop and mobile.
- Preserve existing routes and navigation logic.
- Any new logic should be simple and readable (coursework level).

---

## Header & Footer
- Header must appear consistently across pages.
- Header includes:
  - Logo (navigates to Home)
  - Navigation icons (Search, Account, Cart)
- Footer must:
  - Appear at the bottom of content
  - Stack vertically on small screens
  - Contain shop information and links

---

## Search Functionality
- Search page must include:
  - Text input field
  - Live filtering of products
- Typing a query (e.g. "hoodie") filters product list.
- Search results must be clickable.
- Clicking a result navigates to the product page.
- Product data may be stored in a local in-memory list (no database required).

---

## Cart Functionality
- Products can be added to cart.
- Cart page displays:
  - Product image
  - Name
  - Price
  - Quantity
- Cart must show:
  - Empty state message when empty
  - Checkout button when items exist
- Checkout clears the cart and shows confirmation.

---

## Responsive Layout
- Grid layouts must:
  - Show more columns on wider screens
  - Fewer columns on smaller screens
- Avoid fixed widths where possible.
- Use `LayoutBuilder` or `MediaQuery`.

---

## Testing Requirements
- Widget tests should be provided for:
  - Collections page
  - Search page
  - Cart page
- Tests must:
  - Verify pages load
  - Verify key UI elements exist
  - Verify search filtering works
  - Verify navigation works

---

## Acceptance Criteria
- App runs without crashes.
- Navigation works between pages.
- Search filters products correctly.
- Cart behaves as expected.
- Tests pass using:

```powershell
flutter test
