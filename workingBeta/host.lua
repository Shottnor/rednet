local networkname = "tanktest"
 
rednet.open("right")
rednet.host(networkname, "host")
 
local ids = {rednet.lookup(networkname)}
local theStorageArray = {}
for i = 1, 40 do
    theStorageArray[i] = {}
end
 
while true do
    ids = {rednet.lookup(networkname)}
 
    for i=0,#ids do
 
        if ids[i] ~= rednet.lookup(networkname, "host") and ids[i] ~= nil  then
            repeat
                id, message = rednet.receive()
                print("awaiting message from", ids[i])
            until id == ids[i]
            print(message.name)
            print(message.amount)
            theStorageArray[i][0] = message.name
            theStorageArray[i][1] = message.amount
        end
 
 
    end
 
end





