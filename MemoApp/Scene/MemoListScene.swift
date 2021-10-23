import SwiftUI
import CoreData

struct MemoListScene: View {
    @EnvironmentObject var store: MemoStore
    @State var showComposer: Bool = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(store.list) { memo in
                    MemoCell(memo: memo)
                }
            }
            .navigationTitle("내 메모")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        showComposer.toggle()
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
            .sheet(isPresented: $showComposer) {
                ComposeScene(showComposer: $showComposer)
            }
        }
    }
}

struct MemoListScene_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MemoListScene()
                .environmentObject(MemoStore())
        }
    }
}
