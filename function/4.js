function findPair(Arrays) {
    let pasang = 0;
    while(Arrays.length > 1)
    {
        for(i = 1; i < Arrays.length; i++)
        {
            if(Arrays[0] == Arrays[i])
            {
                pasang++
                Arrays.splice(i, 1)
                break
            }
        }
        Arrays.shift()
    }
    return pasang
}

let data = findPair([20,50,70,10,70,30,10,30,50])
data