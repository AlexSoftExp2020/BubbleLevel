//
//  LevelView.swift
//  BubbleLevel
//
//  Created by Oleksii on 25.01.2025.
//

import SwiftUI

struct LevelView: View {
    @EnvironmentObject var motionDetector: MotionDetector
    
    var body: some View {
        VStack {
            BubbleLevel()
            OrientationDataView().padding(.top, 80)
        }
        .onAppear {
            motionDetector.start()
        }
        .onDisappear {
            motionDetector.stop()
        }
    }
}

#Preview {
    @Previewable @StateObject var motionDetector = MotionDetector(updateInterval: 0.01).started()
    LevelView()
        .environmentObject(motionDetector)
}
