//Домашнее задание 4

// MARK: Задание 1
//1. Дан массив:
//[1, 2, 3, 4, 5, 6]
//По очереди выведите в консоль подмассивы из двух элементов нашего массива:
//[1, 2]
//[3, 4]
//[5, 6]

var numbers = [1, 2, 3, 4, 5, 6]
var resultArray: [[Int]] = []

for i in stride(from: 0, to: (numbers.count - 1), by: 2) {
    resultArray.append([numbers[i], numbers[i+1]])
}
for i in resultArray {
    print(i)
}

// MARK: Задание 2
//2. Даны два массива:
//let arr1 = [1, 2, 3];
//let arr2 = [4, 5, 6];
//Слейте эти массивы в новый массив:
//[1, 2, 3, 4, 5, 6]
let arr1 = [1, 2, 3]
let arr2 = [4, 5, 6]

let mergedArray = arr1 + arr2

// MARK: Задание 3
//3. Дан массив: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].
//Удали из него 3, 7, 9 и выведи результат в консоль
var numbers3 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
var newNumbers3: [Int] = []

for i in numbers3 {
    if i != 3 && i != 7 && i != 9 {
        newNumbers3.append(i)
    }
}

numbers3 = newNumbers3

print(numbers3)

// MARK: Задание 4
//4. Дан массив [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]
//Найдите сумму первой половины элементов этого массива.
let numbers4 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]

var result = 0

for i in stride(from: 0, through: (numbers4.count / 2), by: 1){
    result += i
}

// MARK: Задание 5
//5. Дан массив [1, 2, -3, 4, 5, 6, -7, 8, 9, 10, 11, -12, 13, -14].
//Подсчитайте количество отрицательных чисел в этом массиве.
let numbers5 = [1, 2, -3, 4, 5, 6, -7, 8, 9, 10, 11, -12, 13, -14]

var negativeNumbersCount = 0

for i in numbers5 {
    if i < 0 {
        negativeNumbersCount += 1
    }
}

// MARK: Задание 6
//6. Дан массив [1, 2, -3, 4, 5, 6, -7, 8, 9, 10, 11, -12, 13, -14].
//Оставьте в нем только положительные числа.
var numbers6 = [1, 2, -3, 4, 5, 6, -7, 8, 9, 10, 11, -12, 13, -14]
var newNumbers6: [Int] = []

for i in numbers6 {
    if i > 0 {
        newNumbers6.append(i)
    }
}

numbers6 = newNumbers6

// MARK: Задание 7
//7. Дан массив: ["один", "два", "три"]
//Сделай массив в котором будут те же слова но с большой буквы – ["Один", "Два", "Три"]
//Подсказка: поможет метод строки uppercased(). Используй документацию к типу String
var numbersInWords7 = ["один", "два", "три"]

for i in stride(from: 0, through: numbersInWords7.count - 1, by: 1) {
    let capitalizedFirstLetter = numbersInWords7[i].prefix(1).uppercased()
    let otherLetters = numbersInWords7[i].dropFirst()
    numbersInWords7[i] = capitalizedFirstLetter + otherLetters
}
print(numbersInWords7)

// MARK: Задание 8
//8. Дана строка: "abcde"
//Распечатай по одному символу в консоли
//Подсказка: ты можешь идти в цикле по элементам строки (тип Character) также, как по массиву
var letters8 = "abcde"

for i in letters8 {
    print(i)
}

// MARK: Задание 9
//9*. Дана строка: "🤯abcde"
//Переведите в верхний регистр все нечетные (по индексам) буквы этой строки . В нашем случае должно получится следующее: "🤯AbCdE"
//Подсказка: чтобы итерироваться по индексам, а не по символам, ты можешь вызвать у строки свойство indices и также передать в цикл последовательность
//Подсказка 2: Индексы строки не типа Int. Это из-за устройства строки внутри – некоторые символы могут быть сочетанием других символов. Для того чтобы получить Int
//тебе потребуется метод строки .distance(from: to:) и поле startIndex
//Подсказка 3: Можешь собрать новую строку, а можешь заменять символы по индексам с помощью replaceSubrange(_: with:)
var letters9 = "🤯abcde"
let distanceLetters9 = letters9.distance(from: letters9.startIndex, to: letters9.endIndex)

for i in 0..<distanceLetters9 {
    if i % 2 == 1 {
        let indexLetters = letters9.index(letters9.startIndex, offsetBy: i)
        letters9.replaceSubrange(indexLetters...indexLetters, with: letters9[indexLetters].uppercased())
    }
}

// MARK: Задание 10
//10. Дан массив:
//[1, 2, 3, 4, 5, 6]
//Поделите сумму элементов, стоящих на четных позициях, на сумму элементов, стоящих на нечетных позициях.
var numbers10 = [1, 2, 3, 4, 5, 6]
var oddElementsSum: Double = 0
var evenElementsSum: Double = 0

for (index, value) in numbers10.enumerated() {
    if index % 2 == 0 {
        oddElementsSum += Double(value)
    }
    else {
        evenElementsSum += Double(value)
    }
}

let divideResult = oddElementsSum / evenElementsSum

// MARK: Задание 11
//11. Дан массив: [123, 456, 789]
//Напишите код, который перевернет числа в этом массиве по следующему принципу: [321, 654, 987]
// Подсказка: У этой задачи несколько решений, проще всего использовать конвертацию в строки и прочитать в документации, как переворачивать строку. Но можно решить и без конвертации
var numbers11 = [123, 456, 789]
var newNumbers11: [Int] = []

for number in numbers11 {
    let numberToString = String(String(number).reversed())
    print(numberToString)
    if let stringToNumber = Int(numberToString) {
        newNumbers11.append(stringToNumber)
    }
}
numbers11 = newNumbers11

// MARK: Задание 12
//12. Дан массив: [1, 2, 3, 4, 5, 6]
//Слейте пары элементов вместе: [12, 34, 56]
let numbers12 = [1, 2, 3, 4, 5, 6]
var newNumbers12: [Int] = []

for i in stride(from: 0, to: numbers12.count - 1, by: 2) {
    let resultString = String(numbers12[i]) + String(numbers12[i+1])
    if let stringToNumber = Int(resultString) {
        newNumbers12.append(stringToNumber)
    }
}

// MARK: Задание 13
//13*. Дана некоторая строка со словами: "aaa bbb ccc eee fff"
//Сделайте заглавным первый символ каждого второго слова в этой строке. В нашем случае должно получится следующее:"aaa Bbb ccc Eee fff"
//Подсказка: Аналогично 9 задаче
var letters13 = "aaa bbb ccc eee fff"

let lettersArray13 = letters13.split(separator: " ")

var resultWords13: [String] = []

for (index, word) in lettersArray13.enumerated() {
    if index % 2 == 1 {
        let capitalizedWord = String(word.prefix(1)).uppercased() + word.dropFirst()
        resultWords13.append(capitalizedWord)
    } else {
        resultWords13.append(String(word))
    }
}

letters13 = resultWords13.joined(separator: " ")

// MARK: Задание 14
//14*. Дан массив с числами: [1, 2, 3, 3, 4, 5]
//Проверьте, что в этом массиве есть два одинаковых элемента подряд.
let numbers14 = [1, 2, 3, 3, 4, 5]
var result14 = false
var tempDigit = numbers14[0]

for i in 1..<numbers14.count {
    if numbers14[i] == tempDigit {
        result14 = true
        break
    } else {
        tempDigit = numbers14[i]
    }
}

// MARK: Задание 15
//15*. Дан массив:
//[
//    [2, 1, 4, 3, 5],
//    [3, 5, 2, 4, 1],
//    [4, 3, 1, 5, 2],
//]
//Отсортируйте элементы в каждом подмассиве.
let dynamicNumbers15 = [
    [2, 1, 4, 3, 5],
    [3, 5, 2, 4, 1],
    [4, 3, 1, 5, 2]]
var resultArray15: [[Int]] = []

for i in dynamicNumbers15 {
    resultArray15.append(i.sorted())
}

// MARK: Задание 16
//16*. Дан массив:
//[
//    [1, 2, 3],
//    [4, 5, 6],
//    [7, 8, 9],
//]
//Найдите сумму элементов этого массива.
let dynamicNumbers16 = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]]
var result16 = 0

for i in dynamicNumbers16 {
    for j in i {
        result16 += j
    }
}

// MARK: Задание 17
//17*. Дан массив:
//[
//    [
//        [11, 12, 13],
//        [14, 15, 16],
//        [17, 17, 19],
//    ],
//    [
//        [21, 22, 23],
//        [24, 25, 26],
//        [27, 27, 29],
//    ],
//    [
//        [31, 32, 33],
//        [34, 35, 36],
//        [37, 37, 39],
//    ],
//]
//Найдите сумму элементов этого массива.
let dynamicNumbers17 = [
    [[11, 12, 13], [14, 15, 16], [17, 17, 19]],
    [[21, 22, 23], [24, 25, 26], [27, 27, 29]],
    [[31, 32, 33], [34, 35, 36], [37, 37, 39]]]
var result17 = 0

for i in dynamicNumbers17 {
    for j in i {
        for digit in j {
            result17 += digit
        }
    }
}

// MARK: Задание 18
//18. Дан словарь:
//let dictionary = [
//    "firstArray": [
//        11,
//        12,
//        13,
//    ],
//    "secondArray": [
//        21,
//        22,
//        23,
//    ],
//    "thirdArray": [
//        24,
//        25,
//        26,
//    ],
//]
//Найдите сумму всех вложенных элементов словаря.
let dictionary18: [String: Array] = [
    "firstArray": [11, 12, 13],
    "secondArray": [21, 22, 23],
    "thirdArray": [24, 25, 26]]
var result18 = 0

for (_, value) in dictionary18 {
    for i in value {
        result18 += i
    }
}

// MARK: Задание 19
//19. Дан словарь:
//let dictionary: [String: Any] = [
//    "firstInnerDictionary": [
//        1: 11,
//        2: 12,
//        3: 13,
//    ],
//    "secondInnerDictionary": [
//        1: 21,
//        2: 22,
//        3: 23,
//    ],
//    "array": [
//        24,
//        25,
//        26,
//    ],
//]
//Найдите сумму всех вложенных элементов словаря.
let dictionary19: [String: Any] = [
    "firstInnerDictionary": [1: 11, 2: 12, 3: 13],
    "secondInnerDictionary": [1: 21, 2: 22, 3: 23],
    "array": [24, 25, 26]]
var result19 = 0

for (_, value) in dictionary19 {
    if let temp = value as? [Int] {
        for i in temp {
            result19 += i
        }
    } else if let temp = value as? [Int: Int] {
        for (_, innerValue) in temp {
            result19 += innerValue
        }
    }
}

// MARK: Задание 20
//20. Сформируйте с помощью циклов следующий массив:
//[
//    [1, 2, 3],
//    [1, 2, 3],
//    [1, 2, 3],
//    [1, 2, 3],
//    [1, 2, 3],
//]
var resultArray20: [[Int]] = []

for i in 0..<5 {
    var tempArray: [Int] = []
    for j in 1...3 {
        tempArray.append(j)
    }
    resultArray20.append(tempArray)
}

// MARK: Задание 21
//21. Дан массив:
//[
//    [1, 2, 3],
//    [4, 5, 6],
//    [7, 8, 9],
//]
//Слейте элементы этого массива в один одномерный массив:
//
//[1, 2, 3, 4, 5, 6, 7, 8, 9]
let numbers21 = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
var resultArray21: [Int] = []

for i in numbers21 {
    for j in i {
        resultArray21.append(j)
    }
}

// MARK: Задание 22
//22. Дан массив [1, 2, 3, 4, 5, 6, 7, 8, 9]
// Сделай словарь, который будет под ключами min, max, avarage хранить соответсвующие значения из массива
let numbers22 = [1, 2, 3, 4, 5, 6, 7, 8, 9]
var min22 = numbers22[0]
var max22 = numbers22[0]
var numbersSum22 = 0

for i in numbers22 {
    if i < min22 {
        min22 = i
    }
    if i > max22 {
        max22 = i
    }
    numbersSum22 += i
}

let resultDictionary22 = [
    "min": min22,
    "max": max22,
    "average": numbersSum22 / numbers22.count
]

// MARK: Задание 23
//23. Дан словарь
//[
//    "min" : -100
//    "max" : 42
//]
//Собери массив от минимального значения до максимального с шагом 2, используя значения из словаря
let dictionary23 = [
    "min": -100,
    "max": 42
]

var resultArray23: [Int] = []

if let leftBorder = dictionary23["min"], let rightBorder = dictionary23["max"] {
    for i in stride(from: leftBorder, through: rightBorder, by: 2) {
        resultArray23.append(i)
    }
}

