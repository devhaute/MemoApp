import Foundation

extension DateFormatter {
    static var memoDateFormatter: DateFormatter {
        let format = DateFormatter()
        format.dateStyle = .long
        format.timeStyle = .none
        format.locale = Locale(identifier: "Ko_kr")
        
        return format
    }
}
