import SwiftUI

class Memo: Identifiable, ObservableObject {
    let id = UUID()
    @Published var content: String
    let insertDate = Date()
    
    init(content: String) {
        self.content = content
    }
}

extension Memo: Equatable {
    static func == (lhs: Memo, rhs: Memo) -> Bool {
        return lhs.id == rhs.id
    }
}
