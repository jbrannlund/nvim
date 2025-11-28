require("luxterm").setup({
  -- Manager window dimensions (0.1 to 1.0)
  manager_width = 0.8,          -- 80% of screen width
  manager_height = 0.8,         -- 80% of screen height
  
  -- Enable live preview pane
  preview_enabled = true,
  
  -- Focus new sessions when created via :LuxtermNew
  focus_on_create = false,
  
  -- Auto-hide floating windows when cursor leaves
  auto_hide = true,
  
  -- Keybinding configuration
  keymaps = {
    toggle_manager = "<A-t",    -- Toggle session manager
    next_session = "<C-b>",       -- Next session keybinding
    prev_session = "<C-j>",       -- Previous session keybinding
    global_session_nav = true,   -- Enable global session navigation
  }
})
