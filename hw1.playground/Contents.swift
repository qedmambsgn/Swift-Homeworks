// Домашняя работа 1

var isUserLogged = false
var isDataLoaded = false
var isConnected = false


if isDataLoaded && isConnected{
    if isUserLogged {
        print("Показать профиль пользователя")
    } else {
        print("Показать форму регистрации")
    }
} else if !isConnected || !isDataLoaded {
    print("Что-то пошло не так")
}  else {
    print("Показать скелет экрана")
}
