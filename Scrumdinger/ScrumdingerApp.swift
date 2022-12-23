//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by zhouxl on 2022/10/14.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ScrumsView(scrums: DailyScrum.sampleData)
            }
        }
    }
}
