function cek_kata(text) {
    let splittext = text.split(" ")
    return splittext.filter(e => {
        return /([A-Za-z])+/.test(e)
    })
}

let data = cek_kata("2 pasang sSndal Hilang1")
data