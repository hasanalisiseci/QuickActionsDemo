//
//  ContentView.swift
//  Quick Actions Demo
//
//  Created by Hasan Ali Şişeci on 26.11.2023.
//

import SwiftUI

struct QuickActionsView: View {
    @State var navigationValue: Int? = nil
    @StateObject var qaManager = QuickActionsManager.instance
    @Environment(\.scenePhase) var phase

    var body: some View {
        VStack {
            Text("Quick Actions").font(.largeTitle).bold()
            NavigationLink(tag: 1, selection: $navigationValue) {
                Text("Search QA")
                    .font(.largeTitle).bold()
            } label: {
                EmptyView()
            }
            NavigationLink(tag: 2, selection: $navigationValue) {
                Text("Home QA")
                    .font(.largeTitle).bold()
            } label: {
                EmptyView()
            }
        }.padding()
            .onChange(of: qaManager.quickAction) { _, _ in
            handleQAData()
        }
            .onAppear {
            handleQAData()
        }
    }
    private func handleQAData() {
        if qaManager.quickAction == .home {
            navigationValue = 2
        } else if qaManager.quickAction == .search {
            navigationValue = 1
        }
    }
}

#Preview {
    QuickActionsView()
}
