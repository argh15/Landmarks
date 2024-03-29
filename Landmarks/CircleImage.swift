//
//  CircleImage.swift
//  Landmarks
//
//  Created by Arghadeep Chakraborty on 3/29/24.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white ,lineWidth: 4.0)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImage()
}
