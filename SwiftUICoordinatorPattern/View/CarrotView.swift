//
//  CarrotView.swift
//  SwiftUICoordinatorPattern
//
//  Created by Hakob Ghlijyan on 11.06.2024.
//

import SwiftUI

struct CarrotView: View {
    var body: some View {
        List {
            Button("Pop") {
                
            }
            Button("Pop to Root") {
                
            }
        }
        .navigationTitle("Carrot")
    }
}

#Preview {
    CarrotView()
}
