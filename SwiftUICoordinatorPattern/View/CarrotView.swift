//
//  CarrotView.swift
//  SwiftUICoordinatorPattern
//
//  Created by Hakob Ghlijyan on 11.06.2024.
//

import SwiftUI

struct CarrotView: View {
    @EnvironmentObject private var coordinator: Coordinator
    
    var body: some View {
        List {
            Button("Pop") {
                coordinator.pop()
            }
            Button("Pop to Root") {
                coordinator.popToRoot()
            }
        }
        .navigationTitle("Carrot")
    }
}

#Preview {
    CarrotView()
}
