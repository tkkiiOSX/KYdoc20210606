//
//  InputSgyonaiyouView.swift
//  KYdoc20210606
//
//  Created by Xcode2021 on 2021/07/20.
//

import SwiftUI

var names2 = ["運搬", "設置", "取り付け"]

struct InputSgyonaiyouView: View {
    var body: some View {
        Form {
            Section(header: Text("登録済み")) {
                ForEach(0 ..< names2.count) {index in
                    Button(action: {}) {
                        Text(names2[index])
                    }
                }
            }
            Section(header: Text("作業項目追加")) {
                Button(action: {}) {
                    Text("＋")
                }
            }

        }
    }
}

struct InputSgyonaiyouView_Previews: PreviewProvider {
    static var previews: some View {
        InputSgyonaiyouView()
    }
}
