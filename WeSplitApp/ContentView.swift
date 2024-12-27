//
//  ContentView.swift
//  WeSplitApp
//
//  Created by Gabriel Ayres on 24/12/24.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    
    let tipPercentages = [10, 15, 20, 30]
    var body: some View {
        Form{
            Section{
                TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "BRL"))
                    .keyboardType(.decimalPad)
            }
            
            Section{
                Text(checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "BRL"))
            }
        }
    }
}

#Preview {
    ContentView()
}
