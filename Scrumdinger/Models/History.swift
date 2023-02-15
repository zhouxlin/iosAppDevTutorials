//
//  History.swift
//  Scrumdinger
//
//  Created by zhouxl on 2023/2/13.
//

import Foundation

struct History: Identifiable, Codable {
    let id: UUID
    let date: Date
    var attendes: [DailyScrum.Attendee]
    var lengthInMinutes: Int
    
    init(id: UUID = UUID(), date: Date = Date(), attendes: [DailyScrum.Attendee], lengthInMinutes: Int = 5) {
        self.id = id
        self.date = date
        self.attendes = attendes
        self.lengthInMinutes =  lengthInMinutes
    }
}
