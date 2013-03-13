start_at_login

disable "Remote Desktop Connection"
disable /VirtualBox/

map "<Cmd-Ctrl- >" do
  trigger_item_with(Commands.items, RunRegisteredCommand.new)
end

command "Volume Up" do
  `osascript -e 'set volume output volume (output volume of (get volume settings) + 7)'`
end

command "Volume Down" do
  `osascript -e 'set volume output volume (output volume of (get volume settings) - 7)'`
end

map "<Cmd-p>", Commands.press_button_on_ui

except /(Terminal|MacVim)/ do
    map ";uic", Commands.ui_controls
    map ";lc", Commands.left_click_element
    map ";rc", Commands.right_click_element
    map ";dc", Commands.double_click_element
    map ";mi", Commands.show_current_app_menu_items
end
