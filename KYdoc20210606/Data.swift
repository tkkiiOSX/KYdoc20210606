import Foundation

class Data: ObservableObject {
    //名前
    @Published var dic_name: [String] = ["明智小五郎", "金田一耕助"]
    @Published var now_name: [String] = []

    //作業項目
    @Published var dic_sagyo: [String] = ["運搬", "設置", "固定"]
    @Published var now_sagyo: [String] = []
    
    //危険項目
    @Published var dic_kiken: [String] = ["接触", "落下", "転倒"]
    @Published var now_kiken: [String] = []

    //安全対策
    @Published var dic_anzen: [String] = ["誘導する", "吊荷の下に入らない", "近寄らない"]
    @Published var now_anzen: [String] = []

}
