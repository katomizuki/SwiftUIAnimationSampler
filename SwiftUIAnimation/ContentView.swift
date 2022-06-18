//
//  ContentView.swift
//  SwiftUIAnimation
//
//  Created by ミズキ on 2022/06/18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
    }
}

struct Home: View {
    
    @State var color = 0
    @State var height = UIScreen.main.bounds.height
    @State var width = UIScreen.main.bounds.width
    var body: some View {
        VStack {
            ZStack(alignment: .top) {
                VStack {
                    Image(self.color == 0 ? "lamp1" : "lamp2")
                        .resizable()
                        .frame(height: 300)
                    
                    HStack(spacing: 20) {
                        Button(action: {
                            self.color = 0
                        }, label: {
                            VStack(spacing: 8) {
                                ZStack {
                                    Circle()
                                        .fill(Color.yellow)
                                        .frame(width: 20, height: 20)
                                    
                                    Circle()
                                        .stroke(self.color == 0 ? Color.white : Color.clear, lineWidth: 2)
                                        .frame(width: 30, height: 30)
                                }
                                Text("Yellow")
                                    .foregroundColor(.white)
                                    .font(.caption)
                            }
                        })
                        
                        
                        Button(action: {
                            self.color = 1
                        }, label: {
                            VStack(spacing: 8) {
                                ZStack {
                                    Circle()
                                        .fill(Color.orange)
                                        .frame(width: 20, height: 20)
                                    
                                    Circle()
                                        .stroke(self.color == 1 ? Color.white : Color.clear, lineWidth: 2)
                                        .frame(width: 30, height: 30)
                                }
                                Text("Orange")
                                    .foregroundColor(.white)
                                    .font(.caption)
                            }
                        })
                        
                    }
                    .padding(.top, 20)
                    .padding(.bottom, 10)
                }
                
                HStack {
                    Button(action: {
                        
                    }, label: {
                        Image("back")
                            .renderingMode(.original)
                            .padding()
                            
                    })
                    .padding(.leading, 10)
                    .padding(.top, 20)

                    Spacer()
                    
                    Button(action: {
                        
                    }, label: {
                        Image("cart")
                            .renderingMode(.original)
                            .padding()
                    }).padding(.horizontal, 10)
                        .padding(.vertical, 15)
                        .background(Color.white)
                        .clipShape(CustomShape(corner: .bottomLeft, radii: 30))
                }
            }
            .background(self.color == 0 ? Color.yellow : Color.orange)
            .clipShape(CustomShape(corner: .bottomLeft, radii: 55))
            ScrollView(.vertical , showsIndicators: false) {
                VStack {
                    HStack {
                        Text("Melodi Lamp")
                            .font(.title)
                            .fontWeight(.bold)

                        Spacer()

                        Button(action: {

                        }, label: {
                            Image("heart")
                                .renderingMode(.original)
                                .padding()
                        })
                        .background(self.color == 0 ? Color.yellow : Color.orange)
                        .clipShape(Circle())


                    }
                    .padding(.horizontal, 35)
                    .padding(.top)

                    Text("The lampshape provides directional lighting above the dining the dining table and pleasant diffused light throught the room")
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.gray)
                        .padding(.horizontal, 30)
                        .padding(.top)

                    Spacer(minLength: 0)

                    HStack(spacing: 10) {
                        Button(action: {

                        }, label: {
                            VStack {
                                Image("mat1")
                                    .renderingMode(.original)

                                Text("22 w")
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                            }
                            .padding()
                        })
                        .background(Color.black.opacity(0.06))
                        .cornerRadius(12)

                        Button(action: {

                        }, label: {
                            VStack {
                                Image("mat2")
                                    .renderingMode(.original)

                                Text("24 CM")
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                            }
                            .padding()
                        })
                        .background(Color.black.opacity(0.06))
                        .cornerRadius(12)

                        Button(action: {

                        }, label: {
                            VStack {
                                Image("mat3")
                                    .renderingMode(.original)

                                Text("26 CM")
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                            }
                            .padding()
                        })
                        .background(Color.black.opacity(0.06))
                        .cornerRadius(12)

                        Button(action: {

                        }, label: {
                            VStack {
                                Image("mat4")
                                    .renderingMode(.original)

                                Text("1.6 M")
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                            }
                            .padding()
                        })
                        .background(Color.black.opacity(0.06))
                        .cornerRadius(12)
                    }
                    .padding(.top, 20)
                    .padding(.bottom, 25)

                    Spacer(minLength: 0)
                }
            }
            
            
            HStack{
                
                Text("$12.99")
                    .foregroundColor(.black)
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.leading, 35)
                    .padding(.bottom,25)
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    
                    Text("Add to Cart")
                        .foregroundColor(.black)
                        .padding(.vertical, 20)
                        .padding(.horizontal, 35)
                }
                .background(self.color == 0 ? Color.yellow : Color.orange)
                .clipShape(CustomShape(corner: .topLeft, radii: 55))
                
            }
            
        }
        .edgesIgnoringSafeArea(.all)
        .statusBar(hidden: true)
        .animation(.default)
    }
}

struct CustomShape : Shape {
    
    var corner: UIRectCorner
    var radii: CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corner, cornerRadii: CGSize(width: radii, height: radii))
        return Path(path.cgPath)
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
