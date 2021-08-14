//
//  SgyonaiyouView.swift
//  KYdoc20210606
//
//  Created by Xcode2021 on 2021/07/04.
//

import SwiftUI

struct SgyonaiyouView: View {
    @ObservedObject var data: Data
    
    var body: some View {

        VStack {
                Text("作業項目")

            ForEach(0 ..< data.now_sagyo.count, id: \.self) {index in
                Text(data.now_sagyo[index])
            }

            NavigationLink(destination: InputSgyonaiyouView(data:data)) {
                    Text("作業項目を選択")
                }
        }
        .font(.title)
    }
}
struct SgyonaiyouView_Previews: PreviewProvider {
    static var previews: some View {
        SgyonaiyouView(data: Data())
    }
}


