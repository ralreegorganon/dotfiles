-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
	"AstroNvim/astrocommunity",
	{ import = "astrocommunity.pack.cs" },
	{ import = "astrocommunity.pack.fish" },
	{ import = "astrocommunity.pack.go" },
	{ import = "astrocommunity.pack.json" },
	{ import = "astrocommunity.pack.lua" },
	{ import = "astrocommunity.pack.ruby" },
	{ import = "astrocommunity.pack.sql" },
	{ import = "astrocommunity.pack.typescript" },
	{ import = "astrocommunity.pack.yaml" },
	{ import = "astrocommunity.recipes.telescope-lsp-mappings" },
	-- import/override with your plugins folder
}
