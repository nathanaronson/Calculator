//
//  CalculatorButton.swift
//  Calculator
//
//  Created by Nathan Aronson (student LM) on 10/21/22.
//

import SwiftUI

struct CalculatorButton: View {
    
    var text: String
    var action: () -> Void
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color.white.opacity(0.5))
                .cornerRadius(20)
                .padding(.all, 5)
            Button {
                action()
            } label: {
                Text(text)
                    .font(Constants.textFont)
                    .foregroundColor(Color.gray)
            }
        }
    }
}

struct CalculatorButton_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorButton(text: "0", action: {})
    }
}
