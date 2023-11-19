//
//  DiscoverMovieView.swift
//  Pride
//
//  Created by Cathay Pride Team on 11/18/23.
//

import SwiftUI
import MapKit

struct DiscoverMovieView: View {
    var body: some View {
        ScrollView {
            

            
            
            HStack {
                Spacer()
                VStack (alignment: .leading) {
                    Text("Watched on last flight")
                        .font(.system(size: 14, weight: .bold))
                        .foregroundStyle(.white)
                    
                    Spacer().frame(height: 90)
                    
                    Text("I told the sunset about you")
                        .font(.system(size: 18, weight: .bold))
                        .foregroundStyle(.white)
                    
                    Text("Principal photography took place in Phuket and few more scenes shot in Bangkok.")
                        .font(.system(size: 10))
                        .foregroundStyle(.white)
                }
                Spacer()
            }
            .frame(height: 221)
            .background {
                ZStack {
                    Image("itoldsunsetaboutyou")
                        .resizable()
                    Rectangle()
                        .fill(LinearGradient(colors: [.black, .clear], startPoint: UnitPoint(x: 0.0, y: 0.0), endPoint: UnitPoint(x: 1.0, y: 0.0)))
                        .opacity(0.9)
                }
            }
            
            VStack (alignment: .leading) {
         
                AppView.title("FLIGHT FROM CATHAY PACIFIC", image: "airplane")
                    .padding()
                
                HStack {
                    Spacer()
                    VStack {
                        HStack {
                            Image(systemName: "airplane")
                            VStack(alignment: .leading) {
                                Text("08:35")
                                    .foregroundStyle(Color.appButtonGreen)
                                    .font(.system(size: 20, weight: .semibold))
                                Text("Hong Kong ,Hong Kong International Airport(HKG)) Terminal 1")
                                    .font(.system(size: 10, weight: .semibold))
                                Text("Sun, 19 Nov 2023")
                                    .font(.system(size: 10))
                            }
                            Image(systemName: "arrow.right")
                                .foregroundStyle(Color.appButtonGreen)
                            VStack(alignment: .leading) {
                                Text("11:20")
                                    .foregroundStyle(Color.appButtonGreen)
                                    .font(.system(size: 20, weight: .semibold))
                                Text("Phuket, Phuket International Airport (HKT) Terminal I")
                                    .font(.system(size: 10, weight: .semibold))
                                Text("Sun, 19 Nov 2023")
                                    .font(.system(size: 10))
                            }
                        }
                        .padding(5)
                        HStack {
                            Image(systemName: "airplane")
                                .scaleEffect(CGSize(width: -1.0, height: 1.0))
                            VStack(alignment: .leading) {
                                Text("18:40")
                                    .foregroundStyle(Color.appButtonGreen)
                                    .font(.system(size: 20, weight: .semibold))
                                Text("Phuket, Phuket International Airport (HKT) Terminal I")
                                    .font(.system(size: 10, weight: .semibold))
                                Text("Sat, 25 Nov 2023")
                                    .font(.system(size: 10))
                            }
                            Image(systemName: "arrow.right")
                                .foregroundStyle(Color.appButtonGreen)
                            VStack(alignment: .leading) {
                                Text("23:15")
                                    .foregroundStyle(Color.appButtonGreen)
                                    .font(.system(size: 20, weight: .semibold))
                                Text("Hong Kong ,Hong Kong International Airport(HKG)) Terminal 1")
                                    .font(.system(size: 10, weight: .semibold))
                                Text("Sat, 25 Nov 2023")
                                    .font(.system(size: 10))
                            }
                        }
                        .padding(5)
                    }
                    .frame(width: 353, height: 176)
                    .background {
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.appButtonGreen, lineWidth: 2)
                    }
                    Spacer()
                }
                
                AppView.title("HOLIDAYS EXPERIENCE FROM CATHAY", image: "airplane")
                    .padding()
                
                VStack (alignment: .leading) {
                    Spacer()
                    HStack {
                        VStack (alignment: .leading) {
                            Text("Phi Phi Islands Day Trip")
                                .foregroundStyle(.white)
                                .font(.system(size: 20, weight:.bold))
                            HStack {
                                Image(systemName: "star.fill")
                                    .foregroundStyle(.yellow)
                                    .font(.system(size: 24))
                                VStack (alignment: .leading) {
                                    Text("4.8/5")
                                        .foregroundStyle(.white)
                                        .font(.system(size: 14, weight:.bold))
                                    Text("7K+ reviews")
                                        .foregroundStyle(.white)
                                        .font(.system(size: 14, weight:.light))
                                }
                            }
                        }
                        Spacer()
                    }.padding()
                }
                .frame(height: 176)
                .background {
                    ZStack {
                        Image("phiphi")
                            .resizable()
                        
                        RoundedRectangle(cornerRadius: 8)
                            .fill(LinearGradient(colors: [.black, .clear], startPoint: UnitPoint(x: 0.0, y: 0.0), endPoint: UnitPoint(x: 1.0, y: 0.0)))
                            .opacity(0.9)
                    }
                }
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .padding()
                
                Spacer().frame(height:30)
                
                VStack (spacing: 0) {
                    HStack {
                        Spacer()
                        VStack {
                            Spacer()
                            Text("Follow the cast")
                                .font(.system(size: 10, weight: .bold))
                                .foregroundStyle(.white)
                            Spacer()
                            Text("Teh & Oh-aew")
                                .font(.system(size: 22, weight: .bold))
                                .foregroundStyle(.white)
                            Text("I told the sunset about you")
                                .foregroundStyle(.white)
                                .font(.system(size: 10))
                            Spacer()
                        }
                        
                        Spacer()
                    }
                    .frame(height: 111)
                    .background {
                        ZStack {
                            
                            Image("tehandohaew")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                            Rectangle()
                                .fill(LinearGradient(colors: [.black, .clear], startPoint: UnitPoint(x: 0.0, y: 0.0), endPoint: UnitPoint(x: 1.0, y: 0.0)))
                                .opacity(0.9)
                        }
                    }
                    
                    
                    Map(coordinateRegion: Binding.constant(MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 7.968578006992183,  longitude: 98.34015851290235), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))))
                        .frame(height:224)

                }
                
                
                HStack {
                    Text("1")
                        .font(.system(size: 18, weight: .semibold))
                        .foregroundStyle(.white)
                        .frame(width: 32, height: 32)
                        .background {
                            Circle().fill(Color.appGreen)
                        }

                    
                    RoundedRectangle(cornerRadius: 5)
                        .fill(.gray)
                        .frame(width: 147, height: 105)
                        .overlay {
                            Image("thaihuamuseum")
                                .resizable()
                                .frame(width: 147, height: 105)
                                .aspectRatio(contentMode: .fill)
                                .clipShape(RoundedRectangle(cornerRadius: 5))
                        }
                    VStack (alignment: .leading){
                        Text("Phuket Thai Hua Museum")
                            .font(.system(size: 18, weight: .semibold))
                            .foregroundStyle(Color.appGreen)
                        Text("103/5 Wichit Songkhram Road Talat Nuea, Mueang")
                            .font(.system(size: 10, weight: .semibold))
                    }
                } .padding([.leading, .trailing, .top])
                
                HStack {
                    Text("2")
                        .font(.system(size: 18, weight: .semibold))
                        .foregroundStyle(.white)
                        .frame(width: 32, height: 32)
                        .background {
                            Circle().fill(Color.appGreen)
                        }

                    
                    RoundedRectangle(cornerRadius: 5)
                        .fill(.gray)
                        .frame(width: 147, height: 105)
                        .overlay {
                            Image("aopo")
                                .resizable()
                                .frame(width: 147, height: 105)
                                .aspectRatio(contentMode: .fill)
                                .clipShape(RoundedRectangle(cornerRadius: 5))
                        }
                    VStack (alignment: .leading){
                        Text("Ao Po Grand Marian")
                            .font(.system(size: 18, weight: .semibold))
                            .foregroundStyle(Color.appGreen)
                        Text("113/1 Ro Pho Cho Phuket 4066 Rd. Thalang")
                            .font(.system(size: 10, weight: .semibold))
                    }
                } .padding([.leading, .trailing, .bottom])

                AppView.appButton(button: DiscoverButton(title: "Shop attraction tickets", image: "ticket.fill"))
                    .padding([.leading, .trailing])
                
                Spacer()
                    .frame(height:20)
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    DiscoverMovieView()
}
