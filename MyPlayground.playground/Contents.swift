
//計算 BMI
//公式為 BMI = 體重(公斤)除以身高(公尺)的平方

75 / (1.64 * 1.64)


//六福村門票
//一家五口(兩個大人，一個學生，一個學童，一個幼童)去六福村主題遊樂園要付多少錢？
//ps:也可以計算自己全家人去六福村玩主題遊樂園要付多少錢 ?
//https://www.leofoovillage.com.tw/Infos/Tickets/

let f_papa = 1199
let f_mama = 1199
let f_bigKid = 1099
let f_midKid = 899
let f_littleKid = 699

let totalPrice = f_papa + f_mama + f_bigKid + f_midKid + f_littleKid

//宣告 3 個常數，分別儲存自己高中(或大學)聯考
//(會考,  指考，插大，基測，統測，學測)的數學，英文，國文分數，分數相加除以 3 求平均，儲存於另一個常數
let s_math = 50
let s_english = 60
let s_chinease = 70
var avg = 0
avg = (s_math+s_english+s_chinease) / 3


//練習
//用字串置換自我介紹
let name = "vt9"
let hello = "I am \(name)"

//
import UIKit
let freeImage = UIImage(named: "free.png")
let freeImageView = UIImageView(image: freeImage)
//freeImageView.backgroundColor = UIColor(red: 1, green: 0, blue: 0.3, alpha: 0)

let bgImageView = UIImageView(image: UIImage(named: "star2.png"))
bgImageView.frame = freeImageView.frame
bgImageView.addSubview(freeImageView)


//練習
//定義一個 function，
//接受一個參數代表華氏溫度 ，
//回傳攝氏溫度
//呼叫 function 兩次，將回傳的溫度印出來
// 1.華氏要換算成攝氏時，要先減32後，再乘以5/9。

func F2C(T: Int) -> Int {
    return (T-32) * 5 / 9
}

F2C(T:180)


//練習定義類別
//定義一個類別，類別裡包含屬性和方法。然後用類別生出物件，存取物件的屬性和呼叫物件的方法。


class food {
    var name = ""
    var price = 0.0
    
    func buy(_ num: Double) {
        print("\(name) 買\(num)個，共需 \(num * price) 元")
    }
}

var apple = food()
apple.name = "apple"
apple.price = 50

apple.buy(3)





