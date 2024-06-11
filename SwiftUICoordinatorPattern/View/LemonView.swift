//
//  LemonView.swift
//  SwiftUICoordinatorPattern
//
//  Created by Hakob Ghlijyan on 11.06.2024.
//

import SwiftUI

struct LemonView: View {
    @EnvironmentObject private var coordinator: Coordinator
    
    var body: some View {
        List {
            Button("Dismiss") {
                coordinator.dismissSheet()
            }
        }
        .navigationTitle("Lemon")
    }
}

#Preview {
    LemonView()
}
