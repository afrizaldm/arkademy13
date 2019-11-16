function username(text) {
    return /[A-Z]{7}/.test(text)
}

function password(text) {
    return /((.)\1{3})\*([A-Za-z]{3})/.test(text)
}

data = password("123*asb")
data