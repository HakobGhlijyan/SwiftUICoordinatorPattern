//
//  AppleView.swift
//  SwiftUICoordinatorPattern
//
//  Created by Hakob Ghlijyan on 11.06.2024.
//

import SwiftUI

struct AppleView: View {
    var body: some View {
        List {
            Button("Push Banana") {
                
            }
            Button("Present Lemon") {
                
            }
            Button("Present Olive") {
                
            }
        }
        .navigationTitle("Apple")
    }
}

#Preview {
    AppleView()
}
