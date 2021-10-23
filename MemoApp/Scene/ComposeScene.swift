import SwiftUI

struct ComposeScene: View {
    @EnvironmentObject var store: MemoStore
    @State private var content: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("placeholder", text: $content)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .navigationTitle("새 메모")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        print("취소 클릭")
                    } label: {
                        Text("취소")
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        print("저장 클릭")
                    } label: {
                        Text("저장")
                    }
                }
            }
        }
    }
}

struct ComposeScene_Previews: PreviewProvider {
    static var previews: some View {
        ComposeScene()
            .environmentObject(MemoStore())
    }
}
