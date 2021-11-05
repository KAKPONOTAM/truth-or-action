struct Source {
    enum SourceType {
        case word
        case action
    }



private static let trueSource = ["Расскажи 5 фактов о себе",
            "Как выглядело твое первое свидание?",
            "Расскажи о своем первом поцелуе",
            "О чем обычно врешь другим людям?",
            "О чем мечтаешь?",
            "Как бы ты потратила миллион долларов"
]

private static  let actionSource = ["Станцуй под музуку , которую выбрали другие игроки",
                    "Спародируй любого из присутствующих игроков",
                    "Отожмись или присядь 10 раз",
                    "Изобрази дьявольский смех",
                    "Изобрази известную личность"
]

   static func getInfo(type: SourceType) -> String {
        switch type {
        case .word:
            return trueSource[Int.random(in: 0..<trueSource.count)]
        case .action:
            return actionSource[Int.random(in: 0..<actionSource.count)]
        }
    }
}

