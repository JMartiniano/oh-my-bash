#! bash oh-my-bash.module

SCM_THEME_PROMPT_DIRTY=" ${bold_red}⊘${normal}"
SCM_THEME_PROMPT_CLEAN=" ${bold_green}✓${normal}"
SCM_THEME_PROMPT_PREFIX="${reset_color}( "
SCM_THEME_PROMPT_SUFFIX=" ${reset_color})"

GIT_THEME_PROMPT_DIRTY=" ${bold_red}⊘${normal}"
GIT_THEME_PROMPT_CLEAN=" ${bold_green}✓${normal}"
GIT_THEME_PROMPT_PREFIX="${reset_color}( "
GIT_THEME_PROMPT_SUFFIX=" ${reset_color})"

STATUS_THEME_PROMPT_BAD="${bold_red}❯${reset_color}${normal} "
STATUS_THEME_PROMPT_OK="${bold_green}❯${reset_color}${normal} "

function _omb_theme_PROMPT_COMMAND() {
    local ret_status="$( [ $? -eq 0 ] && echo -e "$STATUS_THEME_PROMPT_OK" || echo -e "$STATUS_THEME_PROMPT_BAD")"
    PS1="\n${blue}\w $(scm_prompt_info)\n${ret_status} "
}

_omb_util_add_prompt_command _omb_theme_PROMPT_COMMAND
