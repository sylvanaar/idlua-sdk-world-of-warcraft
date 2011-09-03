package = "idlua-sdk-world-of-warcraft"
version = "1.0-1"

source = {
    url = "hg://https://bitbucket.org/sylvanaar2/idlua-sdk-world-of-warcraft", 
}

description = {
    summary = "Wprld of Warcraft API definitions for the IntelliJ IDE Lua Support Plugin.", 
    detailed = [[
        Wprld of Warcraft API definitions for the IntelliJ IDE Lua Support Plugin.
    ]],
    license = "MIT/X11",
    homepage = "http://bitbucket.org/sylvanaar2/idlua-sdk-world-of-warcraft/overview", 
    maintainer = "sylvanaar <aylvanaar@mindspring.com>"
}

dependencies = {
    "lua >= 5.1",
}

build = {
   type = "builtin",
   modules = {
      idlua_api_wow = {
          "wow-api.doclua",
          "wow-api.lua",
          "wow-widget-api.lua",
      },
   }
}