import Foundation

class MemoStore: ObservableObject {
    @Published var list: [Memo] = [
        Memo(content: "Lorem Ipsum 1"),
        Memo(content: "Lorem Ipsum 2"),
        Memo(content: "Lorem Ipsum 3")
    ]
    
    func insert(memo: String) {
        let newMemo = Memo(content: memo)
        self.list.insert(newMemo, at: 0)
    }
    
    func update(memo: Memo?, content: String) {
        guard let memo = memo else {
            return
        }
        
        memo.content = content
    }
    
    func delete(memo: Memo) {
        self.list.removeAll { $0 == memo }
    }
    
    func delete(set: IndexSet) {
        for index in set {
            self.list.remove(at: index)
        }
    }
}
