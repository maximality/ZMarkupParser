//
//  TD_HTMLTagName.swift
//  
//
//  Created by Harry Li on 2023/3/9.
//

import Foundation

public struct TD_HTMLTagName: HTMLTagName {
    public let string: String = WC3HTMLTagName.td.rawValue
    public let fixedMaxLength: Int?
    
    public init(fixedMaxLength: Int? = nil) {
        self.fixedMaxLength = fixedMaxLength
    }
    
    public func accept<V>(_ visitor: V) -> V.Result where V : HTMLTagNameVisitor {
        return visitor.visit(self)
    }
}