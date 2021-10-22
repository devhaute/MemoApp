import SwiftUI
import CoreData

struct MemoListScene: View {
    @EnvironmentObject var store: MemoStore
    @EnvironmentObject var formatter: DateFormatter
    
    var body: some View {
        NavigationView {
            List {
                ForEach(store.list) { memo in
                    VStack(alignment: .leading) {
                        Text(memo.content)
                            .font(.body)
                            .lineLimit(1)
                        
                        Text(memo.insertDate, formatter: formatter)
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }
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
            .environmentObject(DateFormatter.memoDateFormatter)
    }
}
