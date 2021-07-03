//
//  CustomViewSub1.swift
//  KYdoc20210606
//
//  Created by Tadahiro Kato on 2021/07/03.
//

import SwiftUI

struct CustomViewSub1: View {
    var title: String
    
    var body: some View {
        Section(header: Text(title).font(.title)) {
            Text("A")
        }
    }
}

struct CustomViewSub1_Previews: PreviewProvider {
    static var previews: some View {
        CustomViewSub1()
    }
}
