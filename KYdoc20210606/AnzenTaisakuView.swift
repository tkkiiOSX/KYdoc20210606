//
//  AnzenTaisakuView.swift
//  KYdoc20210606
//
//  Created by Xcode2021 on 2021/07/04.
//

import SwiftUI

struct AnzenTaisakuView: View {
    @ObservedObject var data: Data

    var body: some View {
        VStack {
            Text("安全対策項目")

            ForEach(0 ..< data.now_anzen.count, id: \.self) {index in
                            Text(data.now_anzen[index])
            }
                NavigationLink(destination: InputAnzenTaisakuView(data: data)) {
                Text("安全対策項目を選択")
            }
        }
        .font(.title)
    }
}

struct AnzenTaisakuView_Previews: PreviewProvider {
    static var previews: some View {
        AnzenTaisakuView(data: Data())
    }
}

