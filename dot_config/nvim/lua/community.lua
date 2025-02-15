-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
	"AstroNvim/astrocommunity",
	{ import = "astrocommunity.fuzzy-finder.fzf-lua" },
	{ import = "astrocommunity.pack.bash" },
	{ import = "astrocommunity.pack.cs" },
	{ import = "astrocommunity.pack.docker" },
	{ import = "astrocommunity.pack.fish" },
	{ import = "astrocommunity.pack.go" },
	{ import = "astrocommunity.pack.helm" },
	{ import = "astrocommunity.pack.json" },
	{ import = "astrocommunity.pack.lua" },
	{ import = "astrocommunity.pack.ruby" },
	{ import = "astrocommunity.pack.sql" },
	{ import = "astrocommunity.pack.terraform" },
	{ import = "astrocommunity.pack.typescript" },
	{ import = "astrocommunity.pack.yaml" },
	{ import = "astrocommunity.recipes.telescope-lsp-mappings" },
	-- import/override with your plugins folder
}
