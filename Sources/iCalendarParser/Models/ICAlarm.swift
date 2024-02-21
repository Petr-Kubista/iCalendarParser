//
//  File.swift
//  
//
//  Created by Petr Kubišta on 21.02.2024.
//

import Foundation

public struct ICAlarm: ICComponentable {
    let type: ICComponentType = .alarm
    
    public var description: String?
    
    public var date: Date?
    
    public init(description: String? = nil, date: Date? = nil) {
        self.description = description
        self.date = date
    }
}

extension ICAlarm: Equatable {
    public static func == (lhs: ICAlarm, rhs: ICAlarm) -> Bool {
        lhs.description == rhs.description && lhs.date == rhs.date
    }
}
