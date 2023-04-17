if vim.g.neovide then
  print "Neovide loaded"

  ------------------
  ---Font
  ------------------
  -- vim.o.guifont = "DejaVuSansMono:h11" -- text below applies for VimScript
  vim.o.guifont = "Fira Code" -- text below applies for VimScript
  vim.opt.linespace = 0

  ------------------
  --- Window and scale
  ------------------
  vim.g.neovide_scale_factor = 1.0
  vim.g.neovide_padding_top = 0
  vim.g.neovide_padding_bottom = 0
  vim.g.neovide_padding_right = 0
  vim.g.neovide_padding_left = 0

  ------------------
  --- Transparency
  ------------------
  -- Helper function for transparency formatting
  local alpha = function()
    return string.format("%x", math.floor((255 * vim.g.transparency) or 0.8))
  end
  -- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
  vim.g.neovide_transparency = 0.0
  vim.g.transparency = 0.95
  vim.g.neovide_background_color = "#0f1117" .. alpha()

  vim.g.neovide_floating_blur_amount_x = 2.0
  vim.g.neovide_floating_blur_amount_y = 2.0

  vim.g.neovide_scroll_animation_length = 0.3
  vim.g.neovide_hide_mouse_when_typing = true

  -- Underlne automatic scaling
  vim.g.neovide_underline_automatic_scaling = false

  -- Refresh rate
  vim.g.neovide_refresh_rate = 60
  vim.g.neovide_refresh_rate_idle = 5

  -- Confirm quit
  vim.g.neovide_confirm_quit = true

  -- Fullscreen
  vim.g.neovide_fullscreen = false

  -- Profiler: shows frametime graph
  vim.g.neovide_profiler = false

  -- MAC --
  -- Command key
  vim.g.neovide_input_use_logo = 1 -- true on macOS
  vim.g.neovide_input_macos_alt_is_meta = true

  ------------------
  -- CURSOR --
  ------------------
  vim.g.neovide_cursor_animation_length = 0.13
  vim.g.neovide_cursor_trail_size = 0.8

  ------------------
  -- ANTIALIASING --
  ------------------
  vim.g.neovide_cursor_antialiasing = true
  vim.g.neovide_cursor_animate_in_insert_mode = true
  vim.g.neovide_cursor_animate_command_line = true
  vim.g.neovide_cursor_unfocused_outline_width = 0.125

  ------------------
  -- cursor animation --
  ------------------
  -- vim.g.neovide_cursor_vfx_mode = "" -- Default
  -- vim.g.neovide_cursor_vfx_mode = "railgun"
  -- vim.g.neovide_cursor_vfx_mode = "torpedo"
  -- vim.g.neovide_cursor_vfx_mode = "pixiedust"
  -- vim.g.neovide_cursor_vfx_mode = "sonicboom"
  vim.g.neovide_cursor_vfx_mode = "ripple"
  -- vim.g.neovide_cursor_vfx_mode = "wireframe"

  -- Particle settings
  vim.g.neovide_cursor_vfx_opacity = 200.0
  vim.g.neovide_cursor_vfx_particle_lifetime = 1.2
  vim.g.neovide_cursor_vfx_particle_density = 7.0
  vim.g.neovide_cursor_vfx_particle_speed = 10.0
  vim.g.neovide_cursor_vfx_particle_phase = 1.5
  vim.g.neovide_cursor_vfx_particle_curl = 1.0

  vim.g.neovide_input_use_logo = 1 -- enable use of the logo (cmd) key
  vim.keymap.set("n", "<D-s>", ":w<CR>") -- Save
  vim.keymap.set("v", "<D-c>", '"+y') -- Copy
  vim.keymap.set("n", "<D-v>", '"+P') -- Paste normal mode
  vim.keymap.set("v", "<D-v>", '"+P') -- Paste visual mode
  vim.keymap.set("c", "<D-v>", "<C-R>+") -- Paste command mode
  vim.keymap.set("i", "<D-v>", '<ESC>l"+Pli') -- Paste insert mode

  -- for some real reason, the default does not work
  vim.keymap.set("n", "<a-n>", require("illuminate").goto_next_reference, { desc = "Move to next reference" })
end
