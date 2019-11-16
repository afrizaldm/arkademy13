function cek_kata(text) {
    let splittext = text.split(" ")
    return splittext.filter(e => {
        return /([A-Za-z])+/.test(e)
    })
}