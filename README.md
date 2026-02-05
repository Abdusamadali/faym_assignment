# Collections Accordion (Flutter)

A simple Flutter UI that displays a list of collection cards with horizontal image previews and a `+N` overlay for additional items.

## Features
- Scrollable list of collection cards
- Collection title with expand/collapse arrow
- Horizontal preview of product images
- `+N` overlay when more images exist
- Accordion behavior (only one expanded at a time)
- Smooth expand and collapse animation
- Rounded cards with elevation

## Approach

- A `ListView.builder` is used to render multiple collection cards.
- Each collection is represented by a `Card` widget with rounded corners and elevation.
- The collection header is clickable and controls the expand/collapse behavior.
- Only one collection can be expanded at a time using an `expandedIndex` state variable.
- The image preview is displayed horizontally using `SingleChildScrollView`.
- `List.generate()` is used to limit the preview images and apply a `+N` overlay using a `Stack`.
- `AnimatedSize` provides a smooth transition during expansion and collapse.

## Behavior
- Shows first 4 images in horizontal view
- Displays `+N` overlay on the last image if more images are available
- Tapping the header expands or collapses the collection

## Project Structure

lib/
├── home_screen.dart # Main UI and accordion logic
├── Collection.dart # Collection data model



## Built With
- Flutter
- Material UI
