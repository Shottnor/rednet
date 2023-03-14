local networkname = "tanktest"
 
rednet.open("right")
rednet.host(networkname, "host")
 
local ids = {rednet.lookup(networkname)}
local theStorageArray = {}
for i = 1, 40 do
    theStorageArray[i] = {}
end
 
while true do
    
 
    for i=0,#ids do
 
        if ids[i] ~= rednet.lookup(networkname, "host") and ids[i] ~= nil  then
            repeat
                id, message = rednet.receive()
                print("awaiting message from", ids[i])
            until id == ids[i]
            term.setCursorPos(1,i)
            print(message.name)
            term.setCursorPos(30,i)
            print(message.amount)
            
           
        end
 
 
    end
    

 
end





