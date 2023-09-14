import SwiftUI

struct HomePage: View {
    var musics = Musics.allMusics()
    @State var initialOffset: CGFloat?
    @State var offset : CGFloat?
    @State var viewIsShow :Bool = true
    
var body: some View {
        VStack{
            
            Image("noidea")
                .resizable()
                .frame(width: 200, height: 200)
                .opacity(self.viewIsShow ? 1 : 0)
                .animation(.easeInOut(duration: 0.5))
   
            ScrollView{
                
                GeometryReader{geometry in
                    Color.clear.preference(key: OffsetKey.self, value: geometry.frame(in: .global).minY)
                }
                
                VStack{
                    HStack{
                        HStack(spacing: 0){
                            Image(systemName: "arrow.down.circle.fill")
                                .padding(.top, 20)
                                .padding(.leading, 20)
                            
                            Image(systemName: "person.fill.badge.plus")
                                .padding(.top, 20)
                                .padding(.leading, 20)
                        }
                        Spacer()
                        
                        Image(systemName: "play.circle.fill")
                            .padding(.trailing, 20)
                            .padding(.top, 20)
                            .foregroundColor(.orange)
                            .font(.system(size: 40))
                    }
                    
                    Text("Playlist Absurda")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.top, 1)
                        .padding(.leading, 20)
                    
                    Spacer().frame(height: 5)
                    
                    Text("Essa playlist é destinada aos melhores Jr. Learners do Planeta ADDA")
                        .font(.callout)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 20)
                    
                    List(self.musics, id: \.name){music in
                        
                        HStack{
                            Image(music.ImageMusic)
                                .resizable()
                                .frame(width: 50, height: 50)
                            
                            VStack(alignment: .leading){
                                Text(music.name)
                                    .font(.title2)
                                    .foregroundColor(.black)
                                    .bold()
                                
                                Spacer().frame(height: 5)
                                
                                HStack(){
                                    if music.explicit{
                                        Text(" E ")
                                            .background(.black)
                                            .foregroundColor(.gray)
                                            .cornerRadius(4)
                                            .bold()
                                            .font(.subheadline)
                                    }
                                    
                                    Text(music.author)
                                        .font(.subheadline)
                                        .foregroundColor(.black)
                                }
                            }
                            
                            Spacer()
                            
                            Image(systemName: "ellipsis")
                        }
                        .listRowSeparator(.hidden)
                        
                    }
                    .listStyle(PlainListStyle())
                    .frame(height: 700)
                    
                }
            }
        }.onPreferenceChange(OffsetKey.self){
            if self.initialOffset == nil || self.initialOffset == 0 {
                self.initialOffset = $0
            }
            
            self.offset = $0
            
            guard let initialOffset = self.initialOffset,
                  let offset = self.offset else {
                return
            }
            
            if(initialOffset > offset){
                self.viewIsShow = false
            }else{
                self.viewIsShow = true
            }
        }
    }
}


struct OffsetKey: PreferenceKey{
    static let defaultValue: CGFloat? = nil
    static func reduce(value: inout CGFloat?,
                       nextValue: () -> CGFloat?){
        value = value ?? nextValue()
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
