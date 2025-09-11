// Домашняя работа 1

var isUserLogged : Bool = false
var isDataLoaded : Bool = false
var isConnected : Bool = false


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
