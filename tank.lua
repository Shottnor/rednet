rednet.open("right")
local networkname = "tanktest"
 
local tank = peripheral.wrap("back")
local tankInfo = tank.getStored()
 
rednet.host(networkname, tankInfo.name)
 
local hostID = rednet.lookup(networkname, "host")
 
 
while true do
    tankInfo = tank.getStored()
    rednet.send(hostID, tankInfo, networkname)
end