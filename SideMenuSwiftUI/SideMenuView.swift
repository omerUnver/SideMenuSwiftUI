//
//  SideMenuView.swift
//  SideMenuSwiftUI
//
//  Created by M.Ömer Ünver on 16.08.2024.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var isShowing : Bool
    @State var selectedOption : SideMenuOptionModel?
    @Binding var selectedTab : Int
    var body: some View {
        ZStack {
            if isShowing {
                Rectangle()
                    .opacity(0.3)
                    .ignoresSafeArea()
                    .onTapGesture {
                        isShowing.toggle()
                    }
                HStack {
                    VStack(alignment: .leading, spacing: 32) {
                        SideMenuHeaderView()
                        
                        VStack {
                            ForEach(SideMenuOptionModel.allCases) { option in
                                Button(action: {
                                    onOptionTap(option)
                                }, label: {
                                    SideMenuRowView(option: option, selectedOption: $selectedOption)
                                })
                            }
                        }
                        Spacer()
                    }
                    .padding()
                    .frame(width: 270,alignment: .leading)
                    .background(Color.white)
                    Spacer()
                }
            }
        }
        .transition(.move(edge: .leading))
        .animation(.easeInOut,value: isShowing)
        
    }
    private func onOptionTap(_ option : SideMenuOptionModel) {
        selectedOption = option
        selectedTab = option.rawValue
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.25) {
            self.isShowing = false
        }
    }
}

#Preview {
    SideMenuView(isShowing: .constant(true), selectedTab: .constant(2))
}
