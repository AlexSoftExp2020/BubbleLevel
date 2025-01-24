//
//  Double+Extension.swift
//  BubbleLevel
//
//  Created by Oleksii on 24.01.2025.
//

import Foundation

extension Double {
    func describedAsFixedLengthString(integerDigits: Int = 2, fractionDigits: Int = 2) -> String {
        self.formatted(
            .number
                .sign(strategy: .always())
                .precision(.integerAndFractionLength(integer: integerDigits, fraction: fractionDigits))
        )
    }
}
