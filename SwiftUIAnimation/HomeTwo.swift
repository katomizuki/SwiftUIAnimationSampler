//
//  HomeTwo.swift
//  SwiftUIAnimation
//
//  Created by ミズキ on 2022/06/19.
//

import SwiftUI

struct HomeTwoView: View {
    
    @State var width = UIScreen.main.bounds.width
    @State var data = [
        DataType(name: "アイウエオ", price: "100", calories: "200", content: "内容", expand: ["いける？"], color: .cyan, image: "keyboard"),
        DataType(name: "アイウエオ", price: "200", calories: "300", content: "内容", expand: ["いける？"], color: .cyan, image: "keyboard"),
        DataType(name: "アイウエオ", price: "300", calories: "400", content: "内容", expand: ["いける？"], color: .cyan, image: "keyboard")
    ]
    @State var index = 0

    var body: some View {
        ZStack(alignment: .top) {
            VStack {
                HStack {
                    Button(action: {
                        
                    }, label: {
                        HStack(spacing: 10) {
                            Image(systemName: "chevron.backward")
                                .renderingMode(.original)
                            
                            Text("Back")
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                        }
                    })
                    
                    Spacer()
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "bag")
                            .renderingMode(.original)
                    })
                }
                .padding()
                HStack {
                    Button(action: {
                        if self.index != 0 {
                            self.index -= 1
                        }
                    }, label: {
                        Image(systemName: "arrow.left.circle")
                            .renderingMode(.original)
                        
                    })
                    .opacity(self.index != 0 ? 1 : 0)
                    .disabled(self.index != 0 ? false : true)
                    
                    Image(systemName: self.data[index].image)
                    
                    Image(systemName: "applelogo")
                    
                    Button(action: {
                        if self.index != self.data.count - 1 {
                            self.index += 1
                        }
                    }, label: {
                        Image(systemName: "arrow.right.circle")
                            .renderingMode(.original)
                        
                    })
                    .opacity(self.index != self.data.count - 1 ? 1 : 0)
                    .disabled(self.index != self.data.count - 1 ? false : true)
                }
                .padding(.top, 50)
                
                VStack(spacing: 20) {
                    Text(self.data[self.index].name)
                        .fontWeight(.bold)
                        .font(.title)
                    
                    Text(self.data[self.index].price)
                        .fontWeight(.bold)
                    
                    Text(self.data[self.index].content)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.gray)
                    
                    Text("Nurtition Value")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.top)
                    
                    HStack {
                        Image(systemName: "flame.fill")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(.white)
                        
                        VStack(alignment: .leading,
                               spacing: 4) {
                            Text(self.data[self.index].calories)
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                            
                            Text("Calories")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                        }
                               .padding(.leading, 20)
                    }
                    .padding()
                    .background(.purple)
                    .cornerRadius(10)
                    
                    HStack {
                        VStack(alignment: .center, spacing: 5){
                            Text(self.data[self.index].expand[0])
                                .fontWeight(.bold)
                            Text("Carbohydrade")
                        }
                        
                        VStack(alignment: .center, spacing: 5){
                            Text(self.data[self.index].expand[0])
                                .fontWeight(.bold)
                            
                            Text("Protien")
                                .foregroundColor(.gray)
                        }
                    }
                    .padding(.horizontal)
                    .padding(.top, 20)
                    
                }
                .padding(.horizontal, 20)
                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Text("Add To Cart")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .padding(.vertical)
                        .frame(width: self.width - 50)
                        .background(.purple)
                        .cornerRadius(20)
                    
                }).padding(.bottom, 20)
            }
            .zIndex(1)
            
            Circle()
                .fill(Color(uiColor: .cyan))
                .frame(width: self.width + 200, height: self.width + 200)
                .padding(.horizontal, -100)
                .offset(y: -self.width)
            
        }
        .animation(.default)
    }
}


struct DataType {
    var name: String
    var price: String
    var calories: String
    var content: String
    var expand: [String]
    var color: Color
    var image: String
    
}


