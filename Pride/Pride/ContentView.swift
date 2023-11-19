//
//  ContentView.swift
//  Pride
//
//  Created by Cathay Pride Team on 11/18/23.
//

import SwiftUI

enum Page {
    case discover
    case shopping
    case dine
    case wellness
    case travel
}

class PathManager : ObservableObject {
    @Published var path = NavigationPath()
}

struct ContentView: View {
    
    @StateObject var pathManager = PathManager()
    
    @State var tab : Page = .discover

    var body: some View {
        VStack(spacing: 0){
            
            //Top
            VStack {
                Spacer()
                HStack(alignment: .bottom, spacing: 0) {
                    
                    if tab == .discover {
                        if pathManager.path.count > 0 {
                            HStack(alignment: .bottom, spacing: 0) {
                                Button(action: {
                                    //withAnimation {
                                        pathManager.path.removeLast()
                                    //}

                                }, label: {
                                    Image(systemName: "chevron.left")
                                }).tint(.black)
                            }
                        }
                    }
                    
                    Spacer()
                    Image(systemName: "magnifyingglass")
                        .padding([.leading, .trailing], 10)
                    Image(systemName: "bell")
                        .padding([.leading, .trailing], 10)
                    Image(systemName: "gear")
                        .padding([.leading, .trailing], 10)
                }.padding()
            }.frame(height: 100)
            
            switch tab {
            case .discover:
                DiscoverView(pathManager: pathManager)
            case .shopping:
                ScrollView {
                    VStack {
                        Image("shopping")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                        Spacer()
                    }
                }
            case .dine:
                ScrollView {
                    VStack {
                        Image("dine")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                        Spacer()
                    }
                }
            case .wellness:
                ScrollView {
                    VStack {
                        Image("wellness")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                        Spacer()
                    }
                }
            case .travel:
                ScrollView {
                    VStack {
                        Image("travel")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                        Spacer()
                    }
                }
            }
            
            
            //Tab
            VStack(spacing: 0) {
                
                //Tab
                Rectangle()
                    .fill(.gray.opacity(0.3))
                    .frame(height: 1)
                
                HStack {
                    Spacer()
                    barButton("book.fill", title: "Discover", page: .discover, selection: $tab)
                    Spacer()
                    barButton("bag.fill", title: "Shopping", page: .shopping, selection: $tab)
                    Spacer()
                    barButton("fork.knife", title: "Dine", page: .dine, selection: $tab)
                    Spacer()
                    barButton("figure.yoga", title: "Wellness", page: .wellness, selection: $tab)
                    Spacer()
                    barButton("airplane", title: "Travel", page: .travel, selection: $tab)
                    Spacer()
                }
                
                Spacer()
            }
            .frame(height: 100)
        }
        .padding(0)
        .ignoresSafeArea()
    }
    
    @ViewBuilder
    func barButton(_ systemName: String,
                       title : String,
                       page : Page,
                       selection : Binding<Page>) -> some View {
        Button (action: {
            selection.wrappedValue = page
        }, label: {
            VStack {
                Image(systemName: systemName)
                    .font(.system(size: 30))
                Text(title)
                    .font(selection.wrappedValue == page ?  .system(size: 10, weight: .bold) : .system(size: 10))
                    .tint(selection.wrappedValue == page ? .black :  .gray)
            }
        })
        .padding([.top], 10)
        .frame(width: 60)
        .tint(selection.wrappedValue == page ? .appGreen :  .gray)
        
    }
    


}

#Preview {
    ContentView()
}
