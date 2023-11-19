//
//  DiscoverView.swift
//  Pride
//
//  Created by Cathay Pride Team on 11/18/23.
//

import SwiftUI

struct DiscoverView: View {
    
    let data = DiscoverData.hackathon
    
    @State var num = 0
    
    @ObservedObject var pathManager : PathManager
    
    var body: some View {
        NavigationStack(path: $pathManager.path){
            ScrollView {
                VStack(alignment: .leading, spacing: 15){
                    
                    ForEach(data.entries, id:\.identifier) {
                        entry in
                        
                        if let label = entry as? DiscoverLabel {
                            AppView.title(label.title)
                        }
                        else if let entry = entry as? DiscoverEntry {
                            if entry.title.contains("Sunset") {
//                                NavigationLink {
//                                    DiscoverMovieView()
//                                        .navigationBarHidden(true)
//                                } label: {
//                                    card(entry: entry)
//                                }
                                
                                Button (action: {
                                    pathManager.path.append(1)
                                }, label: {
                                    card(entry: entry)
                                })
                                
                            } else if entry.title.contains("Map") {
                                Button (action: {
                                    pathManager.path.append(12)
                                }, label: {
                                    card(entry: entry)
                                })
                            }
                            
                            else {
                                card(entry: entry)
                            }
                            
                            //Text("yo2")
                        } else if let button = entry as? DiscoverButton {
                            
                            if button.title.contains("Manage") {
                                Button (action: {
                                    pathManager.path.append(11)
                                }, label: {
                                    AppView.appButton(button: button)
                                })
                            } else {
                                AppView.appButton(button: button)
                            }
                        }
                    }
                    HStack {
                        Spacer()
                    }
                    

                }.padding(20)
                
            }
            .background(Color.appBG)
            .navigationDestination(for: Int.self, destination: {
                target in
                switch target {
                case 1:
                    DiscoverMovieView()
                        .navigationBarHidden(true)
                case 11:
                    ScrollView {
                        VStack {
                            Image("booking")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                            Spacer()
                        }
                    }
                    .ignoresSafeArea()
                    .navigationBarHidden(true)
                case 12:
                    WebView(url: URL(string: "https://www.google.com/maps/d/u/0/viewer?mid=1_a4aoC7dYGE3w7no6Ftrp7lLt1U&hl=en_US&ll=-34.57072749999998%2C150.77570749999992&z=8")!)
                        .ignoresSafeArea()
                        .navigationBarHidden(true)
                default:
                    Text("hihi")
                }
            })
        }
    }

    @ViewBuilder func tag(_ str : String, image : String? = nil) -> some View{
        HStack {
            
            if let imageStr = image {
                Image(systemName: imageStr)
                    .foregroundStyle(.white)
                    .font(.system(size: 10))
            } else {
                Image(systemName: "safari.fill")
                    .foregroundStyle(.white)
                    .font(.system(size: 10))
            }
            
            Text(str)
                .foregroundStyle(.white)
                .font(.system(size: 10))
            
        }
        .frame(width: 87, height: 26)
        .background {

                RoundedRectangle(cornerRadius: 5)
                    .stroke(Color.appTagBorderGreen, lineWidth: 3)
                    .fill(Color.appTagGreen)
            
        }
        
    }
    
    @ViewBuilder
    func card(entry : DiscoverEntry) -> some View {
        VStack (alignment: .leading){
            HStack {
                Spacer()
                if entry.type == .activities {
                    tag("ACTIVITIES").padding()
                } else if entry.type == .locations {
                    tag("LOCATIONS", image: "pin.fill").padding()
                } else if entry.type == .symbols {
                    tag("SYMBOLS", image: "binoculars.fill").padding()
                } else if entry.type == .recent {
                    tag("RECENTS", image: "movieclapper").padding()
                }
            }
            HStack (alignment: .bottom){
                Image(entry.imageName)
                    .resizable()
                    .frame(width: 62, height: 52)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                Text(entry.title)
                    .font(.system(size: 18, weight: .bold))
                    .foregroundStyle(.white)
            }
            .padding([.leading, .trailing])
            
            Text(entry.description)
                .font(.system(size: 12))
                .foregroundStyle(.white)
                .padding([.leading, .trailing, .bottom])
        }
        .frame(minHeight: 150)
        .background {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(.black)
                    
                    
                Image(entry.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .opacity(0.4)
                    .frame(height: 150)
                    .blur(radius: 15)
                    .scaleEffect(CGSize(width: 1.5, height: 1.5))
            }.clipShape(RoundedRectangle(cornerRadius: 10))
        }
    }
    
}

#Preview {
    DiscoverView(pathManager: PathManager())
}
