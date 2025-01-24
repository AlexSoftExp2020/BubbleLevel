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
        detector.roll.describedAsFixedLengthString()
    }
    
    var pitchString: String {
        detector.pitch.describedAsFixedLengthString()
    }
    
    var body: some View {
        VStack {
            Text("Horizontal: " + rollString)
                .font(.system(.body, design: .monospaced))
            Text("Verical: " + pitchString)
                .font(.system(.body, design: .monospaced))
        }
    }
}

#Preview {
    OrientationDataView()
        .environmentObject(MotionDetector(updateInterval: 0.01).started())
}
