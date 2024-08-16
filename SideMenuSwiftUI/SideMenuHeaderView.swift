//
//  SideMenuHeaderView.swift
//  SideMenuSwiftUI
//
//  Created by M.Ömer Ünver on 16.08.2024.
//

import SwiftUI

struct SideMenuHeaderView: View {
    var body: some View {
        HStack {
            Image(systemName: "person.circle.fill")
                .imageScale(.large)
                .foregroundColor(.white)
                .frame(width: 48, height: 48)
                .background(Color.blue)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(.vertical)
            VStack(alignment:.leading, spacing: 6) {
                Text("Muhammed Ömer Ünver")
                    .font(.subheadline)
                Text("muhammedomerunver@gmail.com")
                    .font(.footnote)
                    .foregroundColor(.gray)
                
            }
            
            
        }
    }
}

#Preview {
    SideMenuHeaderView()
}
