override_git_prompt_colors() {
  GIT_PROMPT_THEME_NAME="Single_line"

  GIT_PROMPT_START_USER="${White}\h${ResetColor}:${Yellow}${PathShort}${ResetColor}"
  GIT_PROMPT_END_USER="${ResetColor} $ "
  GIT_PROMPT_END_ROOT="${BoldRed} # "
}

reload_git_prompt_colors "Single_line"
