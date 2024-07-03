return {
	"goolord/alpha-nvim",
	event = "VimEnter",
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")
		vim.cmd([[
			highlight GopherArt guifg=#00ADD8
		]])
		-- Set header
		dashboard.section.header.val = {
			"                                    @@@@@%%#####********######%%@@@@                                ",
			"                             @@@%%%#*+=-:::::::::::::::::::::::::-=+*#%%@@                          ",
			"                         @@@%*=:::::::::::::::::::::::::::::::::::::::::-+#@@@                      ",
			"                      @@%=:::::::::::::::::::::::::::::::::::::::::::::::::::=%@      @@@@@@        ",
			"        @@@@@@@    @@*--:::::::::::::::::::::::::::::::::::::-=*#######+-::::::-=@@@#=-------*@@    ",
			"    @@#==----==+%@%=-::::-=**+==-==+**=-:::::::::::::::::-+*=-:..     .:-=*=:::::-=#=:::::::::-=%@  ",
			"  @@+-:::::::::+*=::::-*+=:.         .-=*+:::::::::::::-*+:    .=***+.    .-*=::::::+#-:-:::::::-*@ ",
			" @#-:::::::::=#+::::-*+.     .-*%%#=.    -*=::::::::::+*.     .#@@@@@@:     .+*::::::-#@@@*-::::::#@",
			"@%:::::+#@%*+#-::::=#.       =@@@@@@%.     ++::::::::++       -@@@@@@@*       =*:::::::+@@@#::::::-@",
			"@-::::*@@@@@*:::::=#         %@@@@@@@-      *=::::::=*        :@@@-*@@=        #-:::::::=@@*:::::::@",
			"@:::::*@@@@+::::::%.         +@@*.%@@.      .%::::::#:         .%@*%@-         -*::::::::=#:::::::=@",
			"@=:::::=@@*::::::-#          .:%@%@+.        #-:::::%.           ....          :#:::::::::*+:::::-@@",
			"@@-:::::=#:::::::-*             ..           *-:::::%.                         -*:::::::::-%-:::+@@ ",
			"  @#-:::%-:::::::-%                         .%::::::++                         #-::::::::::+*+#%@   ",
			"   @@#*#*:::::::::*-                        =+:::::::#-                       ++::::::::::::%@      ",
			"       @-::::::::::#:                      -#:::::::::#=.                   :*+:::::::::::::+@      ",
			"      @*::::::::::::#=.                  .*+::-=+%%%#===%-.              .:+#:::::::::::::::-@      ",
			"      @=:::::::::::::-%-..           ...#+:::#@@@@@@@@@@--*%=..........-%%-::::::::::::::::::#@     ",
			"      @::::::::::::::::-=#%=.     .=#%=-::::*@@@@@@@@@@@*:::----=++=----:::::::::::::::::::::+@     ",
			"     @%:::::::::::::::::::---======--::::+#++@@@@@@@@@@*++#=:::::::::::::::::::::::::::::::::-@     ",
			"     @#:::::::::::::::::::::::::::::::::#+----=++**+==-----+#=::::::::::::::::::::::::::::::::%     ",
			"     @*::::::::::::::::::::::::::::::::+*--------------------%-:::::::::::::::::::::::::::::::#@    ",
			"     @+::::::::::::::::::::::::::::::::=#--------=++=--------%-:::::::::::::::::::::::::::::::*@    ",
			"     @+:::::::::::::::::::::::::::::::::+#===+*#+=%:-**+===+#=::::::::::::::::::::::::::::::::+@    ",
			"     @+::::::::::::::::::::::::::::::::::::#:    -#    =*==-::::::::::::::::::::::::::::::::::=@    ",
			"     @*::::::::::::::::::::::::::::::::::::#:    =*    -*:::::::::::::::::::::::::::::::::::::=@    ",
			"     @*::::::::::::::::::::::::::::::::::::+=    =*    :#:::::::::::::::::::::::::::::::::::::-@    ",
			"     @#::::::::::::::::::::::::::::::::::::-#- .=##-. .*+:::::::::::::::::::::::::::::::::::::-@    ",
			"     @%:::::::::::::::::::::::::::::::::::::-=++=::=+++=::::::::::::::::::::::::::::::::::::::-@    ",
		}

		dashboard.section.header.opts = {
			hl = "GopherArt",
			-- Center the header
			position = "center",
		}

		-- Set menu
		dashboard.section.buttons.val = {
			dashboard.button("a", "  > New File", "<cmd>ene<CR>"),
			dashboard.button("e", "  > Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
			dashboard.button("f", "󰱼  > Find File", "<cmd>Telescope find_files<cr>"),
			dashboard.button("r", "󰈙  > Recent files", ":Telescope oldfiles<CR>"),
			dashboard.button("t", "  > Find Word", "<cmd>Telescope live_grep<CR>"),
			dashboard.button("s", "󰁯  > Restore Session For Current Directory", "<cmd>SessionRestore<CR>"),
			dashboard.button("l", "󰒲  > Open LazyGit", ":LazyGit<CR>"),
			dashboard.button(
				"c",
				"  > Open Neovim Config",
				":lua require('telescope.builtin').find_files({cwd = '~/.config/nvim'})<CR>"
			),
			dashboard.button("q", "  > Quit NVIM", "<cmd>qa<CR>"),
		}

		-- Send config to alpha
		alpha.setup(dashboard.opts)

		-- Disable folding on alpha buffer
		vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
	end,
}