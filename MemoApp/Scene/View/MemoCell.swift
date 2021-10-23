//
//  MemoCell.swift
//  MemoApp
//
//  Created by devhaute on 2021/10/22.
//

import SwiftUI

struct MemoCell: View {
    
    let memo: Memo
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(memo.content)
                .font(.body)
                .lineLimit(1)
            
            Text(memo.insertDate, formatter: DateFormatter.memoDateFormatter)
                .font(.caption)
                .foregroundColor(.secondary)
        }
    }
}

struct MemoCell_Preview: PreviewProvider {
    static var previews: some View {
        MemoCell(memo: Memo(content: "메모메모"))
    }
}
