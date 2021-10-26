//
//  CarView.swift
//  vama
//
//  Created by Vadim Gojan on 26.10.2021.
//

import SwiftUI

struct CarView: View {
    @FocusState var isInputActive: Bool
    let currencies = ["MDL", "USD", "EUR", "CZK"]
    @State private var customsValue = ""
    @State private var selectedCurrency = "MDL"
    @State private var currency = ""
    var body: some View {
        HStack {
            TextField(0.0.formatted(.currency(code: selectedCurrency)) , text: $customsValue)
                .padding(.vertical, 9)
                .padding(.leading, 10)
                .overlay(RoundedRectangle(cornerRadius: 6).strokeBorder(style: StrokeStyle(lineWidth: 2)))
                .padding(.leading)
                .keyboardType(.decimalPad)
                .focused($isInputActive)
                .toolbar {
                    ToolbarItemGroup(placement: .keyboard) {
                        Spacer()
                        Button("OK") {
                            isInputActive = false
                        }
                    }
                }


            Picker("Valuta", selection: $selectedCurrency) {
                ForEach(currencies, id: \.self) { c in
                    Text(c)
                }
            }
            .padding(.horizontal)
        }
        .navigationTitle(Text("Autoturisme"))
    }
}

struct CarView_Previews: PreviewProvider {
    static var previews: some View {
        CarView()
    }
}
