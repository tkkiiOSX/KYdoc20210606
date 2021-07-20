//
//  InputKikenAridashiIView.swift
//  KYdoc20210606
//
//  Created by Xcode2021 on 2021/07/20.
//

import SwiftUI

var names3 = ["落下の危険", "転倒の危険", "固定忘れ"]

struct InputKikenAridashiIView: View {
    var body: some View {

        Form {
            Section(header: Text("登録済み")) {
                ForEach(0 ..< names3.count) {index in
                    Button(action: {}) {
                        Text(names3[index])
                    }
                }
            }
            Section(header: Text("危険予想追加")) {
                Button(action: {}) {
                    Text("＋")
                }
            }

        }

    }
}

struct InputKikenAridashiIView_Previews: PreviewProvider {
    static var previews: some View {
        InputKikenAridashiIView()
    }
}
