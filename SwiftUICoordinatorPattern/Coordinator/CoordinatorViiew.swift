//
//  CoordinatorViiew.swift
//  SwiftUICoordinatorPattern
//
//  Created by Hakob Ghlijyan on 11.06.2024.
//

import SwiftUI

struct CoordinatorViiew: View {
    @StateObject private var coordinator = Coordinator()
    
    var body: some View {
        //MARK: - Make NavStack in path
        NavigationStack(path: $coordinator.path) {
            coordinator.build(page: .apple)
            //for navlink
                .navigationDestination(for: Page.self) { page in
                    coordinator.build(page: page)
                }
            //for sheet
                .sheet(item: $coordinator.sheet) { sheet in
                    coordinator.build(sheet: sheet)
                }
            //for fullScreenCover
                .fullScreenCover(item: $coordinator.fullScreenCover) { fullScreenCover in
                    coordinator.build(fullScreenCover: fullScreenCover)
                }
        }
        .environmentObject(coordinator)
        //for envirement all view add coordinator
    }
}

#Preview {
    CoordinatorViiew()
}
