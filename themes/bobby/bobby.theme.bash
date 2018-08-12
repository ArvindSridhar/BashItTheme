#!/usr/bin/env bash
SCM_THEME_PROMPT_DIRTY=" ${red}✗"
SCM_THEME_PROMPT_CLEAN=" ${bold_green}✓"
SCM_THEME_PROMPT_PREFIX=" |"
SCM_THEME_PROMPT_SUFFIX="${green}|"

GIT_THEME_PROMPT_DIRTY=" ${red}✗"
GIT_THEME_PROMPT_CLEAN=" ${bold_yellow}✓"
GIT_THEME_PROMPT_PREFIX=" ${yellow}|"
GIT_THEME_PROMPT_SUFFIX="${yellow}|"

RVM_THEME_PROMPT_PREFIX="|"
RVM_THEME_PROMPT_SUFFIX="|"

# This Pivotal's customization of the bobby theme

function prompt_command() {
    PS1="\n$(battery_char) ${yellow}$(ruby_version_prompt) ${purple}\h ${reset_color}in ${yellow}\w\n${bold_cyan}$(scm_char)${yellow}$(scm_prompt_info) ${yellow}→${reset_color} "
}

PROMPT_COMMAND=prompt_command;
