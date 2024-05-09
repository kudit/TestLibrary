// The Swift Programming Language
// https://docs.swift.org/swift-book
//
//  Created by Ben Ku on 3/25/24.
//

import Foundation
import Device

struct TestLibrary {
    static var version = "1.4.16"
    
    static var description: String {
        return "Test Library v\(TestLibrary.version)\nDevice v\(Device.version)"
    }
}
