function dropboxfile(link)
    gg.setVisible(true)
    local result ={}
        tableWithData = {
	    ['path'] = "/" .. link
    }
    for key, value in pairs(tableWithData) do
        table.insert(result, string.format("\"%s\":\"%s\"", key, value))
    end
    result = "{" .. table.concat(result, ",") .. "}"
    load(gg.makeRequest("https://content.dropboxapi.com/2/files/download",{['Authorization']="Bearer _Q9AB0Hx_RkAAAAAAAAAAbkLPRn3vVb-QLJIBVY-84zsTjFUIDCMm3PSMvJNa3uU",["Dropbox-API-Arg"]=result}).content)()
end

dropboxfile("MainMenu.lua")