import Foundation

class Data: ObservableObject {
    //名前
    @Published var dic_name: [String] = ["明智小五郎", "金田一耕助"]
    @Published var now_name: [String] = []
    //作業項目
    @Published var dic_sagyo: [String] = ["運搬", "設置", "固定"]
    @Published var now_sagyo: [String] = []
    
    //危険項目

    //安全対策


}
