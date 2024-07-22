function ColorMyPencils(color)
    -- theme gh links
    -- https://github.com/EdenEast/nightfox.nvim
    -- https://github.com/rose-pine/neovim
    -- https://github.com/projekt0n/github-nvim-theme
    
    -- dark themes
	--color = color or "tokyonight-night"
	--color = color or "rose-pine"
	--color = color or "github_dark_default"
	color = color or "nightfox"
	--color = color or "duskfox"

    -- light themes
	--color = color or "tokyonight-day"
	--color = color or "rose-pine-dawn"
	--color = color or "catppuccin-latte"
	--color = color or "dayfox"

    -- make the chosen theme active
	vim.cmd.colorscheme(color)

    -- make the background transparent
	--vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	--vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()
