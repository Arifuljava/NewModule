//
//  File.swift
//  
//
//  Created by sang on 22/5/23.
//

import Foundation
import Foundation

public func unwrap<T>(_ any: T) -> Any {
    let mirror = Mirror(reflecting: any)
    guard mirror.displayStyle == .optional, let first = mirror.children.first else {
        return any
    }
    return first.value
}
