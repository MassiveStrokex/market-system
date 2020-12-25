
local sx, sy = guiGetScreenSize()
local browser = guiCreateBrowser(0, 0, sx, sy, true, true, false)
guiSetVisible(browser, false)
local theBrowser = guiGetBrowser(browser)

guiSetInputMode("no_binds_when_editing")

addEventHandler("onClientBrowserCreated", theBrowser, 
	function()
		loadBrowserURL(source, "http://mta/local/index.html")
	end
)


addEventHandler("onClientBrowserDocumentReady", browser,
    function ()
        executeBrowserJavascript(source, "document.getElementById('vipGoster').innerHTML = '" .. getElementData(localPlayer,"vip") .. "'");
        executeBrowserJavascript(source, "document.getElementById('dene2').innerHTML = '" .. getElementData(localPlayer,"age") .. "'");
		executeBrowserJavascript(source, "document.getElementById('dene3').innerHTML = '" .. getElementData(localPlayer,"gender") .. "'");
    end)

borsaMark = createMarker(-2425.10425, -586.05237, 132.71243, "cylinder", 1.5, 0, 0 , 0, 0)
setElementDimension(borsaMark, 0)
setElementInterior(borsaMark, 0)
-- Delete
local borsaGonderebilir = true






addEventHandler("onClientResourceStart",resourceRoot, function()
	addEventHandler("onClientRender", root, render)
end)



local sx,sy = guiGetScreenSize()
function render()
	if isTransferBoxActive() then -- eger mb kutucugu varsa
			guiSetVisible( browser, not guiGetVisible( browser ) )
	else
		removeEventHandler("onClientRender", root, render)
	end
end


local acikmi = false
local test   = false
function blackstock(thePlayer)
if acikmi then 
	silbabasil(acikmi)
	showCursor(false)
	acikmi = nil
return end

acikmi = Web:new(
	{
		html 	  	  = "index.html",
		size 	  	  = screenWidth, screenHeight = guiGetScreenSize(),
		pos  	  	  = Vector2(250,50),
		bLocal        = true,
		bTransparent  = true,
		infoPlayer = true,
		onReadyRender = true,
		functions = {

			ready = function()

				showCursor(true)

			end

		}
	
	}
)
end
addEvent("marketpanel",true)
addEventHandler("marketpanel",root,function()
    -- if not isElementWithinMarker(localPlayer, borsaMark) then
	-- return end
	--outputChatBox("[+]#FFFFFF Paneli Kapatmak İçin Tekrar /btcpanel Yazınız. ©Irresistible",29,193,7,true)
	guiSetVisible( browser, not guiGetVisible( browser ) )

end)





addEvent("t.kapat333",true)
addEventHandler("t.kapat333",root,function()
    guiSetVisible( browser, not guiGetVisible( browser ) )
end)












