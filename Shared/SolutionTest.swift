//
//  SolutionTest.swift
//  Calculator
//
//  Created by Nathan Aronson (student LM) on 10/21/22.
//

import SwiftUI

struct SolutionTest: View {
    
    @Binding var solution: Int
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color.white.opacity(0.5))
                .cornerRadius(20)
                .padding(.all, 10)
            HStack {
                Spacer()
                Text("\(solution)")
                    .font(Constants.textFont)
                    .foregroundColor(Color.gray)
                    .padding(.trailing, 40)
            }
        }
    }
}

struct SolutionTest_Previews: PreviewProvider {
    static var previews: some View {
        SolutionTest(solution: Binding.constant(0))
    }
}
