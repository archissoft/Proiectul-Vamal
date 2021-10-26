//
//  ContentView.swift
//  vama
//
//  Created by Vadim Gojan on 26.10.2021.
//

import SwiftUI

struct ContentView: View {
    let car = CarView()
    @State private var customsValue = ""
    var body: some View {
        TabView {
            NavigationView {
                ScrollView {
                    car
                }
            }
            .tabItem {
                Label("Autoturisme", systemImage: "car")
            }
            .navigationTitle("Autoturisme")
            Text("Camioane")
                .tabItem {
                    Label("Camioane", systemImage: "bus")
                }
            Text("Motociclete")
                .tabItem {
                    Label("Motociclete", systemImage: "scooter")
                }
            Text("Autocare")
                .tabItem {
                    Label("Autocare", systemImage: "bus")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
