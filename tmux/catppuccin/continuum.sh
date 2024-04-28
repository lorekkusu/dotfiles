show_continuum() {
  local index icon color text module

  index=$1
  icon="$(get_tmux_option "@catppuccin_continuum_icon" "")"
  color="$(get_tmux_option "@catppuccin_continuum_color" "$thm_orange")"
  text="$(get_tmux_option "@catppuccin_continuum_text" "#{continuum_status}")"

  module=$(build_status_module "$index" "$icon" "$color" "$text")

  echo "$module"
}
