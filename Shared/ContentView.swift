//
//  ContentView.swift
//  Shared
//
//  Created by Nathan Aronson (student LM) on 10/21/22.
//

import SwiftUI

enum Operation {
    case add, subtract, multiply, divide, modulus, empty
}

struct ContentView: View {
    
    @State var solution: Int = 0
    @State var number: Int = 0
    @State var operation: Operation = .empty
    
    func calculate() {
        switch operation {
        case .add:
            solution += number
        case .subtract:
            solution -= number
        case .multiply:
            solution *= number
        case .divide:
            solution /= number
        case .modulus:
            solution %= number
        case .empty:
            solution = solution
        }
        number = 0
    }
    
    var body: some View {
        ZStack {
            Rectangle()
                .edgesIgnoringSafeArea(.all)
                .foregroundColor(Color.background)
            VStack {
                SolutionTest(solution: $number)
                HStack {
                    CalculatorButton(text: "7") {
                        number = number * 10 + 7
                    }
                        .padding(.leading, 5)
                    CalculatorButton(text: "8") {
                        number = number * 10 + 8
                    }
                    CalculatorButton(text: "9") {
                        number = number * 10 + 9
                    }
                    CalculatorButton(text: "+") {
                        calculate()
                        operation = .add
                    }
                        .padding(.trailing, 5)
                }
                
                HStack {
                    CalculatorButton(text: "4") {
                        number = number * 10 + 4
                    }
                        .padding(.leading, 5)
                    CalculatorButton(text: "5") {
                        number = number * 10 + 5
                    }
                    CalculatorButton(text: "6") {
                        number = number * 10 + 6
                    }
                    CalculatorButton(text: "-") {
                        calculate()
                        operation = .subtract
                    }
                        .padding(.trailing, 5)
                }
                
                HStack {
                    CalculatorButton(text: "1") {
                        number = number * 10 + 1
                    }
                        .padding(.leading, 5)
                    CalculatorButton(text: "2") {
                        number = number * 10 + 2
                    }
                    CalculatorButton(text: "3") {
                        number = number * 10 + 3
                    }
                    CalculatorButton(text: "x") {
                        calculate()
                        operation = .multiply
                    }
                        .padding(.trailing, 5)
                }
                
                HStack {
                    CalculatorButton(text: "+/-") {
                        number *= -1
                    }
                        .padding(.leading, 5)
                    CalculatorButton(text: "0") {
                        number = number * 10
                    }
                    CalculatorButton(text: "%") {
                        calculate()
                        operation = .modulus
                    }
                    CalculatorButton(text: "/") {
                        calculate()
                        operation = .divide
                    }
                        .padding(.trailing, 5)
                }
                
                HStack {
                    CalculatorButton(text: "clear") {
                        number = 0
                        operation = .empty
                    }
                        .padding(.leading, 5)
                    CalculatorButton(text: "=") {
                        calculate()
                        operation = .empty
                    }
                        .padding(.trailing, 5)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewInterfaceOrientation(.portraitUpsideDown)
            ContentView()
                .previewInterfaceOrientation(.portraitUpsideDown)
        }
    }
}
