import SwiftUI
import CoreData

struct MemoListScene: View {
    @EnvironmentObject var store: MemoStore
    
    var body: some View {
        NavigationView {
            List {
                ForEach(store.list) { memo in
                    Text(memo.content)
                }
            }
            .navigationTitle("내 메모")
        }
    }
}

struct MemoListScene_Previews: PreviewProvider {
    static var previews: some View {
        MemoListScene()
            .environmentObject(MemoStore())
    }
}
