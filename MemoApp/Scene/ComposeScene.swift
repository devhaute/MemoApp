import SwiftUI

struct ComposeScene: View {
    @EnvironmentObject var store: MemoStore
    @State private var content: String = ""
    @Binding var showComposer: Bool
    
    var body: some View {
        NavigationView {
            VStack {
                TextView(text: $content)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.red)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .navigationTitle("새 메모")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        showComposer.toggle()
                    } label: {
                        Text("취소")
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        store.insert(memo: content)
                        showComposer.toggle()
                    } label: {
                        Text("저장")
                    }
                }
            }
        }
    }
}

struct ComposeScene_Preview: PreviewProvider {
    static var previews: some View {
        ComposeScene(showComposer: .constant(false))
    }
}
