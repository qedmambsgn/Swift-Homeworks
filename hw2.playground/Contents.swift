// Домашняя работа 2

var isUserLogged : Bool = false
var isDataLoaded : Bool = true
var isConnected : Bool = true

let actionMessage : String = (isDataLoaded && isConnected) ? (isUserLogged ? "Показать профиль пользователя" : "Показать форму регистрации") : ((!isConnected || !isDataLoaded) ? "Что-то пошло не так" : "Показать скелет экрана")

switch(isDataLoaded, isConnected, isUserLogged) {
case(true, true, true):
    print("Показать профиль пользователя")
case(true, true, false):
    print("Показать форму регистрации")
case(false, _, _), (_, false, _):
    print("Что-то пошло не так")
default:
    print("Показать скелет экрана")
}
