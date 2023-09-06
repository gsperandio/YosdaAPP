
//  ContentView.swift
//  ExampleUI
//
//  Created by Dev Mac on 05/09/23.
//

import SwiftUI

struct ContentView: View {
    @State var texto = ""
    @State var senha = ""
    var body: some View {
        ZStack
        {
            Color.indigo
            
            VStack {
                Spacer()
                HStack{
                    Image(systemName: "circle.hexagongrid")
                        .imageScale(.large)
                        .font(.system(size: 70))
                        .foregroundColor(.white)
                    
                    Text("YOSDA \nAPP")
                        .fontWeight(.black)
                        .italic()
                        .font(.custom("Helvetica", size: 40))
                        .foregroundColor(.white)
                }
                Spacer()
                
                ZStack{
                    Rectangle()
                        .fill(.white)
                    
                    VStack(alignment: .leading, spacing: 0){
                        Text("Crie sua conta")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.top, 20)
                            .padding(.leading, 20)
                        
                        Text("E-mail")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.top, 20)
                            .padding(.leading, 20)
                            .font(.caption)
                            .foregroundColor(.secondary)
                        
                        TextField("email@exemplo.", text: $texto)
                            .padding(.leading, 16)
                            .padding(.vertical, 8)
                            .background(Color(uiColor: .systemGray6))
                            .border(.purple, width: 3)
                            .cornerRadius(6)
                            .padding(.horizontal)
                            
                        Text("Senha")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.top, 20)
                            .padding(.leading, 20)
                            .font(.caption)
                            .foregroundColor(.secondary)
                        
                        SecureField("***********", text: $senha)
                            .padding(.leading, 16)
                            .padding(.vertical, 8)
                            .border(.purple, width: 3)
                            .background(Color(uiColor: .systemGray6))
                            .cornerRadius(6)
                            .padding(.horizontal)
                            
                        
                        
                            
                        Spacer()
                        
                            
                    }
                }
                .background(.white)
                .frame(maxWidth: .infinity, maxHeight: 500, alignment: .bottom)
                .cornerRadius(30)
                
            }
        }.edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
