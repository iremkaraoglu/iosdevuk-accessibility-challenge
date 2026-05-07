//
//  HomeView.swift
//  IOSDevuk26
//
//  Created by Chris Price on 25/03/2026.
//

import SwiftUI

struct HomeView: View {
    @State private var selectedTab: Int = 0

    var body: some View {
        TabView(selection: $selectedTab) {
            Tab("Programme", systemImage: "calendar", value: 0) {
                ProgrammeView()
            }
            Tab("Speakers", systemImage: "person.2", value: 1) {
                SpeakersView()
            }
            Tab("Locations", systemImage: "map", value: 2) {
                LocationsView()
            }
            Tab("My Schedule", systemImage: "star", value: 3) {
                MyScheduleView()
            }
        }
        .sensoryFeedback(.selection, trigger: selectedTab)
    }

}

#Preview {
    HomeView()
}
