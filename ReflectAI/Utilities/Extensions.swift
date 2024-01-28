//
//  Extensions.swift
//  ReflectAI
//
//  Created by Mayank Raj on 2024-01-28.
//

import Foundation
import SwiftUI

extension Date{
    func toString() -> String{
        self.formatted(date: .abbreviated, time: .omitted)
    }
    
    func formated() -> String{
        let dateFor = DateFormatter()
        dateFor.dateFormat = "EEEE, MMM d"
        return dateFor.string(from: self)
    }
}
