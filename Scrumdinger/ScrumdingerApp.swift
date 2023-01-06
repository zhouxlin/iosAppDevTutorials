//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by zhouxl on 2022/10/14.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
     @State private var scrums = DailyScrum.sampleData
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ScrumsView(scrums: $scrums)
            }
        }
    }
}
