//
//  Message.swift
//  Sehat-in
//
//  Created by Garry on 18/02/22.
//

import Foundation

struct Message: Identifiable, Codable {
    var id: String
    var text: String
    var received: Bool
    var timestamp: Date
}


