import SwiftUI

struct HomePage: View {
    var body: some View {
        ScrollView {
            GeometryReader { geometry in
                // Imagem no topo
                Image("sua_imagem")
                    .resizable()
                    .scaledToFill()
                    .frame(width: geometry.size.width, height: 200)
                    .clipped()

                // Lista que se sobrepõe à imagem
                VStack {
                    ForEach(1...20, id: \.self) { index in
                        Text("Item \(index)")
                            .font(.title)
                            .padding()
                    }
                }
                .background(Color.white)
                .cornerRadius(20)
                .offset(y: -100) // Ajuste a posição vertical conforme necessário
            }
            .frame(maxWidth: .infinity)
        }
        .background(Color.gray) // Cor de fundo da tela
        .ignoresSafeArea()
        .navigationBarTitle("Página Inicial")
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
