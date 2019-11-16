function username(text) {
    return /[A-Z]{7}/.test(text)
}

function password(text) {
    return /(([0-9])\1\1)\*|(([a-zA-Z])\1\1)/.test(text)
}

data = password("111*AAA")
data