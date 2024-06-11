//
//  AppleView.swift
//  SwiftUICoordinatorPattern
//
//  Created by Hakob Ghlijyan on 11.06.2024.
//

import SwiftUI

struct AppleView: View {
    @EnvironmentObject private var coordinator: Coordinator
    //this only one line in add all used view my coordinator
    
    var body: some View {
        List {
            Button("Push Banana") {
                coordinator.push(.banana)
            }
            Button("Present Lemon") {
                coordinator.present(sheet: .lemon)
            }
            Button("Present Olive") {
                coordinator.present(fullScreenCover: .olive)
            }
        }
        .navigationTitle("Apple")
    }
}

#Preview {
    AppleView()
}
