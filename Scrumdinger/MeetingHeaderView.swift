//
//  MeetingHeaderView.swift
//  Scrumdinger
//
//  Created by zhouxl on 2023/1/7.
//

import SwiftUI

struct MeetingHeaderView: View {
    let secondsElapsed: Int
    let secondsRemaining: Int
    let theme: Theme
    
    private var totalSeconds: Int {
        secondsElapsed + secondsRemaining
    }
    private var progress: Double {
        guard totalSeconds > 0 else { return 1}
        return Double(secondsElapsed) / Double(secondsRemaining)
    }
    
    private var minutesRemaining: Int {
        secondsRemaining / 60
    }
    var body: some View {
        VStack {
            ProgressView(value: progress)
                .progressViewStyle(ScrumProgressViewStyle(theme: theme))
            HStack {
                VStack(alignment: .leading) {
                    Text("Seconds Elapsed")
                        .font(.caption)
                    Label("\(secondsElapsed)", systemImage: "hourglass.bottomhalf.fill")
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text("Seconds Remain")
                        .font(.caption)
                    Label("\(secondsRemaining)", systemImage: "hourglass.tophalf.fill")
                }
            }
        }
        .accessibilityElement(children: .ignore)
        .accessibilityLabel("time Remaining")
        .accessibilityValue("\(minutesRemaining) minutes")
        
    }
}

struct MeetingHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingHeaderView(secondsElapsed: 120, secondsRemaining: 200, theme: .bubblegum).previewLayout(.sizeThatFits)
    }
}
