local SuAlimFiyati = 5
local sUItem = 15

addEvent("su:al",true)
addEventHandler("su:al",root,function(thePlayer)
    if exports.global:hasMoney(thePlayer, SuAlimFiyati) then
	outputChatBox("#00ff00[!]#ffffff 1 adet Su satın aldınız.",thePlayer,0,255,0,true)
    exports.global:giveItem(thePlayer, sUItem,1)
	exports.global:takeMoney(thePlayer, SuAlimFiyati)
	else
	outputChatBox("#00ff00[!]#ffffff Yeterli paranız bulunmamaktadır.",thePlayer,255,0,0,true)
	end
end)