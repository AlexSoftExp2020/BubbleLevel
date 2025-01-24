//
//  OrientationDataView.swift
//  BubbleLevel
//
//  Created by Oleksii on 24.01.2025.
//

import SwiftUI

struct OrientationDataView: View {
    @EnvironmentObject var detector: MotionDetector
    
    var rollString: String {
        //MARK: TODO detector.roll.describeAs
    }
    //MARK: TODO Continue
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    OrientationDataView()
}
