//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Arghadeep Chakraborty on 3/31/24.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
//        static way
//        List {
//            LandmarkRow(landmark: landmarks[0])
//            LandmarkRow(landmark: landmarks[1])
//        }
//        if not Identifiable
//        List(landmarks, id: \.id) { landmark in
//            LandmarkRow(landmark: landmark)
//        }
//        otherwise, simply
        NavigationSplitView {
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkList()
}
