//
//  JobsView.swift
//  wit26
//
//  Created by Charlotte Chrysostom on 07/03/2026.
//

import SwiftUI

struct JobsView: View {
    
    @State var searchText = ""
    @State private var selectedTab = 0
    let jobs = ["Painter/Decorator", "Electrician", "Plumber", "Gardener", "Mechanic"]
    let errands = ["Mover", "Dog Walker"]
    let jobIcons = [
        "paintbrush.fill",
        "lightbulb.fill",
        "drop.fill",
        "leaf.fill",
        "wrench.and.screwdriver.fill"
    ]
    var body: some View {
        CapyTextField(title: "Search", text: $searchText, systemIcon: "magnifyingglass").padding()
        Picker("Tabs", selection: $selectedTab) {
            Text("Jobs").tag(0)
            Text("Errands").tag(1)
        }
        .pickerStyle(.segmented)
        .padding()
        
        if selectedTab == 0 {
            VStack {
                NavigationStack{
                    List {
                        ForEach(jobs.indices, id: \.self) { index in
                            NavigationLink(destination: DetailView(job: jobs[index])) {
                                HStack {
                                    Image(systemName: jobIcons[index])
                                        .frame(width: 30)
                                        .foregroundColor(.blue)
                                    
                                    Text(jobs[index])
                                }
                            }
                        }
                    }
                    .listStyle(.plain)
                }
            }
        } else{
            VStack {
                NavigationStack{
                    List {
                        ForEach(errands.indices, id: \.self) { index in
                            NavigationLink(destination: DetailView(job: errands[index])) {
                                HStack {
                                    Image(systemName: jobIcons[index])
                                        .frame(width: 30)
                                        .foregroundColor(.blue)
                                    
                                    Text(errands[index])
                                }
                            }
                        }
                    }
                    .listStyle(.plain)
                }
            }
        }
    }
    
    struct DetailView: View {
        let job: String
        
        var body: some View {
            VStack {
                switch job {
                case "Painter/Decorator":
                    TradeswomenCardView(name: "Joanne", role: "Decorator", distance: 65)
                    TradeswomenCardView(name: "Lina", role: "Painter", distance: 80)
                case "Electrician":
                    Text("Electrician details here")
                case "Plumber":
                    Text("Plumber details here")
                case "Gardener":
                    Text("Gardener details here")
                case "Mechanic":
                    Text("Mechanic details here")
                default:
                    Text("Unknown job")
                }
                Spacer()
            }
            .navigationTitle(job)
        }
    }
}

#Preview {
    JobsView()
}
