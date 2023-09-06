import SwiftUI

struct HomePage: View {
    var body: some View {
        VStack(spacing: 0) {
            Image(systemName: "atom") // Substitua "atom" pelo nome do ícone desejado
                .resizable()
                .scaledToFill()
                .frame(height: 200)
                .clipped()

            List(1...20, id: \.self) { index in
                Text("Item \(index)")
                    .font(.title)
                    .padding()
            }
            .background(Color.white)
            .cornerRadius(20)
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
