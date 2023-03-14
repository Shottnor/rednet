local networkname = "tanktest"



rednet.open("right")
rednet.host(networkname, "host")

function UpdateUi(ids)

    for i=0,#ids do

        if ids[i] ~= rednet.lookup(networkname, "host") and ids[i] ~= nil  then
            repeat
                id, message = rednet.receive()
                
            until id == ids[i]
            term.setCursorPos(1,i)
            print(message.name)
            term.setCursorPos(30,i)
            print(message.amount)

         end


    end

end


local ids = {rednet.lookup(networkname)}




while true do

UpdateUi(ids)



end





