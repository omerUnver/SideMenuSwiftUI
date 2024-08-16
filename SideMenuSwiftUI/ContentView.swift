//
//  ContentView.swift
//  SideMenuSwiftUI
//
//  Created by M.Ömer Ünver on 16.08.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var isSideMenu = false
    @State private var selectedTab = 0
    var body: some View {
        NavigationView {
            ZStack {
                TabView(selection: $selectedTab){
                    Text("Dashboard")
                        .tag(0)
                    Text("Performance")
                        .tag(1)
                    Text("Profile")
                        .tag(2)
                    Text("Search")
                        .tag(3)
                    Text("Notifications")
                        .tag(4)
                }
             SideMenuView(isShowing: $isSideMenu, selectedTab: $selectedTab)
            }
            .toolbar(isSideMenu ? .hidden : .visible, for: .navigationBar)
            .navigationTitle("Side Menu")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: {
                        isSideMenu.toggle()
                    }, label: {
                        Image(systemName: "line.3.horizontal")
                            
                    })
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
