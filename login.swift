//  ContentView.swift
//  ExampleUI
//
//  Created by Dev Mac on 05/09/23.
//

import SwiftUI

struct ContentView: View {
    @State var texto = ""
    @State var senha = ""
    @State var isToggled = false
    var body: some View {
        ZStack
        {
            Color.indigo
            
            VStack {
                Spacer()
                HStack{
                    Image(systemName: "atom")
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
                            .border(.indigo, width: 3)
                            .cornerRadius(4)
                            .padding(.horizontal)
                        HStack{
                            Text("Senha")
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.top, 20)
                                .padding(.leading, 20)
                                .font(.caption)
                                .foregroundColor(.secondary)
                            
                            Spacer()
                            
                            Button("Recuperar senha"){}
                                .foregroundColor(.blue)
                                .padding(.trailing, 20)
                                .padding(.top, 20)
                                .font(.system(size: 16))
                                .foregroundColor(.secondary)
                        }
                        
                        SecureField("***********", text: $senha)
                            .padding(.leading, 16)
                            .padding(.vertical, 8)
                            .border(.indigo, width: 3)
                            .background(Color(uiColor: .systemGray6))
                            .cornerRadius(4)
                            .padding(.horizontal)
                        
                        HStack{
                            Text("Lembrar minha senha")
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.top, 2)
                                .padding(.leading, 20)
                                .font(.caption)
                                .foregroundColor(.secondary)
                            
                            Spacer()
                            
                            Toggle("", isOn: $isToggled)
                                .padding()
                        }
                        
                        Button("Criar conta"){
                            
                        }
                        .padding(.vertical, 14)
                        .frame(maxWidth: .infinity)
                        .background(.indigo)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                        .padding()
                        .bold()
                        
                        Button{
                            
                        } label: {
                            Label("Continuar com Apple", systemImage: "apple.logo")
                                .bold()
                        }
                        .padding(.vertical, 14)
                        .frame(maxWidth: .infinity)
                        .background(.black)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                        .padding()
                        
                        HStack{
                            Text("Já possui uma conta?")
                                .padding(.top, 20)
                                .padding(.leading, 20)
                                .font(.system(size: 16))
                                .foregroundColor(.secondary)
                            
                            
                            Button("Entre"){}
                                .foregroundColor(.blue)
                                .padding(.trailing, 20)
                                .padding(.top, 20)
                                .font(.system(size: 18))
                                .foregroundColor(.secondary)
                        }
                        .frame(maxWidth: .infinity, alignment: .center)
                        
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
