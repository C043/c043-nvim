require("java").setup()
require("lspconfig").jdtls.setup({
	settings = {
		java = {
			configuration = {
				runtimes = {
					{
						name = "JavaSE-21",
						path = "/opt/jdk-21.0.4+7",
						default = true,
					},
				},
			},
		},
	},
})
