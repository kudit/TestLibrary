// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

public extension String {
    static var testLibrary: String {
        "The test library \(String(describing: Bundle.module)) exists!"
    }
}

public class TestLibrary {
    // This is here so we can pull bundle module
}

public extension Bundle {
    static var testBundleModule = Bundle.module
    static var testLibrary = Bundle(for: TestLibrary.self)
}
