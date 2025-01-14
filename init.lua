require("before")
require("remaps")
require("autocommands")
require("lazyPackageManager")

-- NOTE: Plugin configs
require("pluginConfigs.autotagConfig")
require("pluginConfigs.blanklineConfig")
require("nvim-tree").setup()
