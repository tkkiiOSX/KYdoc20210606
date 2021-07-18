//
//  InputNameView.swift
//  KYdoc20210606
//
//  Created by Xcode2021 on 2021/07/18.
//

import SwiftUI

var names = ["鈴木", "田中", "佐藤"]

struct InputNameView: View {
    var body: some View {
        Form {
            Section(header: Text("登録済み")) {
                ForEach(0 ..< names.count) {index in
                    Button(action: {}) {
                        Text(names[index])
                    }
                }
            }
            Section(header: Text("追加")) {
                Button(action: {}) {
                    Text("＋")
                }
            }

        }
    }
}
struct InputNameView_Previews: PreviewProvider {
    static var previews: some View {
        InputNameView()
    }
}
