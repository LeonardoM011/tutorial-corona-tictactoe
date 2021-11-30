require "sqlite3"

function openDB()
	local path = system.pathForFile("data.db", system.DocumentsDirectory)
	db = sqlite3.open( path )   
		
end