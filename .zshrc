export ZSH="/Users/raveneyex/.oh-my-zsh"
export UPDATE_ZSH_DAYS=15

CASE_SENSITIVE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

# POWERLEVEL9K

# Variables
DEFAULT_BACKGROUND="black"
DEFAULT_FOREGROUND="white"
USERNAME_COLOR="088"
USERNAME_ICON_COLOR="white"
GIT_MODIFIED_COLOR="red"
RIGHT_BACKGROUND="black"
RIGHT_FOREGROUND="red"
USER_ICON="\ue36e"
SYSTEM_ICON="\uF109"
SPOTIFY_ICON="\uf9c6"

POWERLEVEL9K_MODE="nerdfont-complete"
ZSH_THEME="powerlevel9k/powerlevel9k"

# Prompt settings
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=false
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="╭"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="╰\uF460 "

# Separators
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=$'\ue0b0'
POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR=$'\uf6d8'
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=$'\ue0b2'
POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR=$'\uf6d8'

# OS Segment
POWERLEVEL9K_APPLE_ICON="%F{$DEFAULT_FOREGROUND}\uf179%f"
POWERLEVEL9K_LINUX_ICON="%F{$DEFAULT_FOREGROUND}\uf31b%f"
POWERLEVEL9K_OS_ICON_BACKGROUND="$DEFAULT_BACKGROUND"

# Context
POWERLEVEL9K_ALWAYS_SHOW_CONTEXT=true
POWERLEVEL9K_ALWAYS_SHOW_USER=false
POWERLEVEL9K_CONTEXT_TEMPLATE="%F{$USERNAME_ICON_COLOR}${USER_ICON} %F{$USERNAME_COLOR}%n %F{$DEFAULT_FOREGROUND}\uf6d8 $SYSTEM_ICON  %m %f"

# Custom Spotify
custom_spotify_info() {
  state=`osascript -e 'tell application "Spotify" to player state as string'`;
  if [ $state = "playing" ]; then
    artist=`osascript -e 'tell application "Spotify" to artist of current track as string'`;
    track=`osascript -e 'tell application "Spotify" to name of current track as string'`;

    echo -n "$SPOTIFY_ICON $artist - $track";
  fi
}
POWERLEVEL9K_CUSTOM_SPOTIFY_INFO="custom_spotify_info"
POWERLEVEL9K_CUSTOM_SPOTIFY_INFO_BACKGROUND="$DEFAULT_BACKGROUND"
POWERLEVEL9K_CUSTOM_SPOTIFY_INFO_FOREGROUND="$DEFAULT_FOREGROUND"

# Custom User
# raveneyex() {
#     echo -n "\uf668 $(whoami)"
# }
# POWERLEVEL9K_CUSTOM_USER="raveneyex"
# POWERLEVEL9K_CUSTOM_USER_BACKGROUND="$USERNAME_COLOR"

# Dir colours
POWERLEVEL9K_DIR_HOME_BACKGROUND="$DEFAULT_BACKGROUND"
POWERLEVEL9K_DIR_HOME_FOREGROUND="$DEFAULT_FOREGROUND"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="$DEFAULT_BACKGROUND"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="$DEFAULT_FOREGROUND"
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="$DEFAULT_BACKGROUND"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="$DEFAULT_FOREGROUND"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=4
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
POWERLEVEL9K_HOME_ICON="\uf286 "
POWERLEVEL9K_HOME_SUB_ICON="\uf07c "

# VCS icons
POWERLEVEL9K_VCS_GIT_ICON=$''
POWERLEVEL9K_VCS_GIT_GITHUB_ICON=$''
POWERLEVEL9K_VCS_GIT_GITLAB_ICON=$''
POWERLEVEL9K_VCS_BRANCH_ICON=$'\ue725 '
POWERLEVEL9K_VCS_STAGED_ICON=$'\uf055 '
POWERLEVEL9K_VCS_UNSTAGED_ICON=$'\uf421 '
POWERLEVEL9K_VCS_UNTRACKED_ICON=$'\uf00d '
POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON=$'\uf0ab '
POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON=$'\uf0aa '
# VCS colours
POWERLEVEL9K_VCS_CLEAN_BACKGROUND="$DEFAULT_BACKGROUND"
POWERLEVEL9K_VCS_CLEAN_FOREGROUND="$DEFAULT_FOREGROUND"
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND="$DEFAULT_BACKGROUND"
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND="$DEFAULT_FOREGROUND"
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND="$DEFAULT_BACKGROUND"
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND="$GIT_MODIFIED_COLOR"
# VCS CONFIG
POWERLEVEL9K_SHOW_CHANGESET=false

# Battery
POWERLEVEL9K_BATTERY_LOW_FOREGROUND="$RIGHT_FOREGROUND"
POWERLEVEL9K_BATTERY_CHARGING_FOREGROUND="$RIGHT_FOREGROUND"
POWERLEVEL9K_BATTERY_CHARGED_FOREGROUND="$RIGHT_FOREGROUND"
POWERLEVEL9K_BATTERY_DISCONNECTED_FOREGROUND="$RIGHT_FOREGROUND"
POWERLEVEL9K_BATTERY_VERBOSE=true

# TIME
POWERLEVEL9K_TIME_BACKGROUND="$RIGHT_BACKGROUND"
POWERLEVEL9K_TIME_FOREGROUND="$RIGHT_FOREGROUND"

# Prompt elements
# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(custom_user dir vcs)
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(custom_spotify_info background_jobs battery time) 

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh
