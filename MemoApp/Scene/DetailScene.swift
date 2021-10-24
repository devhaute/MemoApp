//
//  DetailScene.swift
//  MemoApp
//
//  Created by devhaute on 2021/10/24.
//

import SwiftUI

struct DetailScene: View {
    @ObservedObject var memo: Memo
    
    @EnvironmentObject var store: MemoStore
    
    var body: some View {
        VStack {
            ScrollView {
                VStack {
                    HStack {
                        Text(memo.content)
                            .padding()
                        Spacer()
                    }
                    
                    Text(memo.insertDate, formatter: DateFormatter.memoDateFormatter)
                        .padding()
                        .font(.footnote)
                        .foregroundColor(Color(UIColor.secondaryLabel))
                }
            }
        }
        .navigationTitle("메모 보기")

    }
}

struct DetailScene_Previews: PreviewProvider {
    static var previews: some View {
        DetailScene(memo: Memo(content: "SwiftUI"))
            .environmentObject(MemoStore())
    }
}
