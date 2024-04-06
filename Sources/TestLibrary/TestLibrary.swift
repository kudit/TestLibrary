// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

extension String {
    static var testLibrary: String {
        "The test library \(String(describing: Bundle.module)) exists!"
    }
}

class TestLibrary {
    // This is here so we can pull bundle module
}

extension Bundle {
    static var testBundleModule = Bundle.module
    static var testLibrary = Bundle(for: TestLibrary.self)
}
