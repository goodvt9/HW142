import UIKit


//參數
let baseColor = UIColor(red: 1, green: 128/255, blue: 0, alpha: 1)
let bgImageName = "capybara.jpg"
let bgBorderWidth:CGFloat = 2
let bgBorderRadius:CGFloat = 350

let msgColor = baseColor
let msgFont28 = UIFont.systemFont(ofSize: 28)
let msg1Str = "旅行"
let msg1Rect = CGRect(x:100, y: 500, width: 200, height: 30)
let msg2Str = "是為了洗滌靈魂"
let msg2Rect = CGRect(x: 100, y: 550, width: 200, height: 30)
let emojiText = "❤️"
let emojiRect = CGRect(x: 310, y: 550, width: 30, height: 30)
let emojiTransform : CGAffineTransform = CGAffineTransform(rotationAngle: .pi / 180 * 30).concatenating(CGAffineTransform(scaleX: -1, y: 1))

let maskRect = CGRect(x: 0, y: 0, width: 350, height: 771)
let maskColor = UIColor.white
let maskAlpha = 0.8


//產生遮罩
func GenMask() -> UIImageView {
    let maskImageView = UIImageView(image: UIImage())
    maskImageView.frame = maskRect
    maskImageView.backgroundColor = maskColor
    maskImageView.alpha = maskAlpha
    return maskImageView
}

//產生心靈雞湯
func GenLabel(size: CGRect, txt: String, txtColor: UIColor=msgColor, txtSize: UIFont=msgFont28) -> UILabel {
    let msgLabel = UILabel(frame: size)
    msgLabel.text = txt
    msgLabel.textColor = txtColor
    msgLabel.font = txtSize
    return msgLabel
}

//底圖邊框樣式
func SetBGImageViewStyle() {
    capybaraImageView.layer.borderWidth = bgBorderWidth
    capybaraImageView.layer.borderColor = baseColor.cgColor
    capybaraImageView.layer.cornerRadius = bgBorderRadius
    capybaraImageView.clipsToBounds = true
}


//產生底圖
let capybaraUIImage = UIImage(named: bgImageName)
let capybaraImageView = UIImageView(image: capybaraUIImage)

//底圖加入遮罩
capybaraImageView.addSubview(GenMask())

//底圖加入心靈雞湯
let msg1Label = GenLabel(size: msg1Rect, txt: msg1Str)
capybaraImageView.addSubview(msg1Label)
let msg2Label = GenLabel(size: msg2Rect, txt: msg2Str)
capybaraImageView.addSubview(msg2Label)
let emojiLabel = GenLabel(size: emojiRect, txt: emojiText)
emojiLabel.transform = emojiTransform
capybaraImageView.addSubview(emojiLabel)

//底圖邊框樣式
SetBGImageViewStyle()

//顯示結果
capybaraImageView

