// Домашняя работа 3

for i in stride(from: 100, through: 1, by: -1) {
    print("Current value - \(i)")
}


for i in -1000...0 {
    print("Current value - \(i)")
}

for i in 1...100 {
    if i % 3 == 0 {
        print(i)
    }
}

var result : Int = 0

for i in 1...100 {
    if i % 2 == 0 {
        result += i
    }
}
