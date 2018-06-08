-- This file was automatically generated for the LuaDist project.

-- luacheck: std rockspec

package = "petrisport"
version = "0.1-1"
-- LuaDist source
source = {
  tag = "0.1-1",
  url = "git://github.com/LuaDist-testing/petrisport.git"
}
-- Original source
-- source  = {
--   url = "git+https://github.com/cui-unige/petrisport.git",
--   tag = "0.1",
-- }

description = {
  summary    = "Petri sport",
  detailed   = [[]],
  homepage   = "https://github.com/cui-unige/petrisport",
  license    = "MIT/X11",
  maintainer = "Alban Linard <alban@linard.fr>",
}

dependencies = {
  "lua >= 5.1",
  "ansicolors",
  "argparse",
  "busted",
  "luacheck",
  "cluacov",
  "coronest",
  "etlua",
  "luaexpat",
  "luafilesystem",
  "lualogging",
  "luasocket",
  "luasec",
  "magic",
}

build = {
  type    = "builtin",
  modules = {
    ["petrinet"             ] = "src/petrinet/init.lua",
    ["petrinet.marking"     ] = "src/petrinet/marking/init.lua",
    ["petrinet.state"       ] = "src/petrinet/state/init.lua",
    ["petrinet.reachability"] = "src/petrinet/reachability/init.lua",
    ["petrinet.analysis"    ] = "src/petrinet/analysis/init.lua",
    ["petrinet.example.dimitri"     ] = "src/petrinet/example/dimitri.lua",
    ["petrinet.example.flag"        ] = "src/petrinet/example/flag.lua",
  },
  install = {
    bin = {
      ["petrisport"] = "src/petrinet/bin.lua",
    },
  },
}