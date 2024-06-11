//
//  Coordinator.swift
//  SwiftUICoordinatorPattern
//
//  Created by Hakob Ghlijyan on 11.06.2024.
//

import SwiftUI

//MARK: - Coordinator Page
enum Page: String , Identifiable {
    case apple, banana, carrot
    var id: String {
        self.rawValue
    }
}

//MARK: - Coordinator Sheet
enum Sheet: String , Identifiable {
    case lemon
    var id: String {
        self.rawValue
    }
}

//MARK: - Coordinator FullScreenCover
enum FullScreenCover: String , Identifiable {
    case olive
    var id: String {
        self.rawValue
    }
}

//MARK: - Coordinator Class
class Coordinator: ObservableObject {
    @Published var path = NavigationPath()
    @Published var sheet: Sheet?
    @Published var fullScreenCover: FullScreenCover?
    
    //MARK: - Push
    func push(_ page: Page) {
        path.append(page)
    }
    
    //MARK: - sheet present
    func present(sheet: Sheet) {
        self.sheet = sheet
    }
    
    //MARK: - fullScreenCover present
    func present(fullScreenCover: FullScreenCover) {
        self.fullScreenCover = fullScreenCover
    }
    
    //MARK: - pop - 1
    func pop() {
        path.removeLast()
    }
    
    //MARK: - pop - All To root
    func popToRoot() {
        path.removeLast(path.count)
    }
    
    //MARK: - dismiss
    func dismissSheet() {
        self.sheet = nil
    }
     
    //MARK: - dismiss
    func dismissFullScreenCover() {
        self.fullScreenCover = nil
    }
  
    //MARK: - ViewBuilder page for Coordinator
    @ViewBuilder
    func build(page: Page) -> some View {
        switch page {
        case .apple:
            AppleView()
        case .banana:
            BananaView()
        case .carrot:
            CarrotView()
        }
    }
    
    //MARK: - ViewBuilder sheet for Coordinator
    @ViewBuilder
    func build(sheet: Sheet) -> some View {
        switch sheet {
        case .lemon:
            NavigationStack {
                LemonView()
            }
        }
    }
    
    //MARK: - ViewBuilder sheet for Coordinator
    @ViewBuilder
    func build(fullScreenCover: FullScreenCover) -> some View {
        switch fullScreenCover {
        case .olive:
            NavigationStack {
                OliveView()
            }
        }
    }
    
    
    
    
    
    
}
