//
//  TrailingIconLabelStyle.swift
//  Scrumdinger
//
//  Created by zhouxl on 2022/10/17.
//  自定义style， 相当于css
//

import SwiftUI

struct TrailingIconLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.title
            configuration.icon
        }
    }
}

extension LabelStyle where Self == TrailingIconLabelStyle {
    static var trailingIcon: Self{ Self() }
}
