//
//  InputAnzenTaisakuView.swift
//  KYdoc20210606
//
//  Created by Xcode2021 on 2021/07/20.
//

import SwiftUI

var names4 = ["台車に固定する", "吊り紐を適切に行う", "ネジましじめ再確認"]

struct InputAnzenTaisakuView: View {
    var body: some View {

        Form {
            Section(header: Text("登録済み")) {
                ForEach(0 ..< names4.count) {index in
                    Button(action: {}) {
                        Text(names4[index])
                    }
                }
            }
            Section(header: Text("安全対策追加")) {
                Button(action: {}) {
                    Text("＋")
                }
            }

        }
    }
}

struct InputAnzenTaisakuView_Previews: PreviewProvider {
    static var previews: some View {
        InputAnzenTaisakuView()
    }
}
