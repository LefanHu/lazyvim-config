-- Completion keys
-- * <Tab> accepts: the highlighted completion-menu item if the menu is open,
--   otherwise jumps to the next snippet field, otherwise accepts the inline
--   Copilot suggestion, otherwise inserts a normal tab
-- * <CR> no longer accepts completions; it always inserts a newline
-- * <S-Tab> jumps back a snippet field, <C-y> still accepts, <C-e> dismisses the menu
return {
  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        preset = "super-tab",
      },
    },
  },
}
