// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

extension String {
    static var testLibrary: String {
        "The test library \(String(describing: Bundle.module)) exists!"
    }
}
