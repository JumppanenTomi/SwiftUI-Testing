//
//  LandmarkList.swift
//  Landmarks
//
//  Created by iosdev on 2.4.2023.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView{
            List(landmarks) { Landmark in
                NavigationLink{
                    LandmarkDetail(landmark: Landmark)
                }label: {
                    LandmarkRow(landmark: Landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
