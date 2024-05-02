# TechieButler

TechieButler is a SwiftUI iOS application that fetches and displays posts from a public API endpoint. It aims to showcase best practices in iOS development, including data fetching, pagination, optimization techniques, and adherence to design principles.

Checkout Project wroking [video](https://drive.google.com/drive/folders/1GqQxpEkgTupbnLcbzXhNOY61s-WhKSlK?usp=sharing)

## Features

1. **Data Fetching and Rendering:**
   - Fetches data from the provided API endpoint `https://jsonplaceholder.typicode.com/posts` with support for pagination.
   - Displays fetched data in a list format, showing the `id` and `title` fields for each post.

2. **Pagination:**
   - Implements pagination to fetch and display data in batches, enhancing user experience and optimizing performance.
   - Loads more data as the user scrolls through the list.

3. **Heavy Computation Optimization:**
   - While no heavy computation is evident in the provided code, the app handles data decoding and UI updates efficiently using GCD (Grand Central Dispatch) to perform UI updates on the main thread.

4. **Callback Memorization:**
   - Develops a detailed view for each list item that reveals additional information upon selection.
   - Passes necessary data from the selected item to the detailed view using SwiftUI navigation.
   - Employs SwiftUI's built-in optimizations for UI rendering.

## Implementation

### Data Fetching Optimization

Caching mechanism is introduced in the `HomeViewModel` to store previously fetched data locally. This reduces the need for network requests and improves app performance. Here's how caching is implemented:

```swift
// Code snippet for caching in HomeViewModel
// (Refer to the provided code in HomeViewModel class)
```

### Test Case for ordinalRepresentation

A unit test case is provided to test the `ordinalRepresentation` extension on `Int`. This ensures the correctness of ordinal representation for different integer values. Here's the test case:

```swift
// Code snippet for test case in OrdinalRepresentationTests
// (Refer to the provided test case in OrdinalRepresentationTests class)
```

## Usage

To run the app locally, follow these steps:

1. Clone the repository to your local machine.
2. Open the project in Xcode.
3. Build and run the project on a simulator or a connected iOS device.

## Contributing

Contributions are welcome! If you have any suggestions, improvements, or bug fixes, please open an issue or submit a pull request.

```

Feel free to customize the content and structure of the README.md file according to your preferences and project requirements.
