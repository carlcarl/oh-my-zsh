# FreeAgent puts the powerline style in zsh !

if [ "$POWERLINE_RIGHT_B" = "" ]; then
  POWERLINE_RIGHT_B=%D{%H:%M:%S}
fi

if [ "$POWERLINE_RIGHT_A" = "" ]; then
  POWERLINE_RIGHT_A=%D{%Y-%m-%d}
fi

POWERLINE_COLOR_BG_GRAY=%K{240}
POWERLINE_COLOR_BG_LIGHT_GRAY=%K{240}
POWERLINE_COLOR_BG_WHITE=%K{255}

POWERLINE_COLOR_FG_GRAY=%F{240}
POWERLINE_COLOR_FG_LIGHT_GRAY=%F{240}
POWERLINE_COLOR_FG_WHITE=%F{255}

GIT_DIRTY_COLOR=%F{133}
GIT_CLEAN_COLOR=%F{118}
GIT_PROMPT_INFO=%F{012}

ZSH_THEME_GIT_PROMPT_PREFIX=" \u2b60 "
ZSH_THEME_GIT_PROMPT_SUFFIX="$GIT_PROMPT_INFO"
ZSH_THEME_GIT_PROMPT_DIRTY=" $GIT_DIRTY_COLOR✘"
ZSH_THEME_GIT_PROMPT_CLEAN=" $GIT_CLEAN_COLOR✔"

ZSH_THEME_GIT_PROMPT_ADDED="%F{082}✚%f"
ZSH_THEME_GIT_PROMPT_MODIFIED="%F{166}✹%f"
ZSH_THEME_GIT_PROMPT_DELETED="%F{160}✖%f"
ZSH_THEME_GIT_PROMPT_RENAMED="%F{220]➜%f"
ZSH_THEME_GIT_PROMPT_UNMERGED="%F{082]═%f"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%F{190]✭%f"

PROMPT="%K{237}%F{250} %n %k%f%F{244}%K{237}"$'\u2b81'"%k%f%F{250}%K{237} %1~"$'$(git_prompt_info)'" %k%f%F{237}%K{236}"$'\u2b80'" %k%f%F{244}%K{236} $  %k%f%F{236}"$'\u2b80'"%f "

RPROMPT=$POWERLINE_COLOR_FG_WHITE$'\ue0b2'"%f$POWERLINE_COLOR_BG_WHITE $POWERLINE_COLOR_FG_GRAY$POWERLINE_RIGHT_B "$'\ue0b2'"%f%k$POWERLINE_COLOR_BG_GRAY$POWERLINE_COLOR_FG_WHITE $POWERLINE_RIGHT_A %f%k"
