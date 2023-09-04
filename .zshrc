#    ______     __  __     __    __     __  __    
#   /\  __ \   /\ \_\ \   /\ "-./  \   /\ \_\ \   
#   \ \ \/\ \  \ \  __ \  \ \ \-./\ \  \ \____ \  
#    \ \_____\  \ \_\ \_\  \ \_\ \ \_\  \/\_____\ 
#     \/_____/   \/_/\/_/   \/_/  \/_/   \/_____/ 
#                                                 
export ZSH="/home/ellie/.oh-my-zsh"
ZSH_THEME="minimal"
COMPLETION_WAITING_DOTS="true"
plugins=(
    autopep8 pip python git fzf zsh-syntax-highlighting autoswitch_virtualenv
    ) 
MNML_INFOLN=(mnml_err mnml_jobs mnml_files)
MNML_RPROMPT=('mnml_cwd 2 0' mnml_git)
source $ZSH/oh-my-zsh.sh
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)


#    ______     _____     __     ______   ______     ______    
#   /\  ___\   /\  __-.  /\ \   /\__  _\ /\  __ \   /\  == \   
#   \ \  __\   \ \ \/\ \ \ \ \  \/_/\ \/ \ \ \/\ \  \ \  __<   
#    \ \_____\  \ \____-  \ \_\    \ \_\  \ \_____\  \ \_\ \_\ 
#     \/_____/   \/____/   \/_/     \/_/   \/_____/   \/_/ /_/ 
                                                           
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
else
   export EDITOR='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

#   ______     __         __     ______     ______     ______     ______    
#  /\  __ \   /\ \       /\ \   /\  __ \   /\  ___\   /\  ___\   /\  ___\   
#  \ \  __ \  \ \ \____  \ \ \  \ \  __ \  \ \___  \  \ \  __\   \ \___  \  
#   \ \_\ \_\  \ \_____\  \ \_\  \ \_\ \_\  \/\_____\  \ \_____\  \/\_____\ 
#    \/_/\/_/   \/_____/   \/_/   \/_/\/_/   \/_____/   \/_____/   \/_____/ 
                                                                         

alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"
alias ripme='java -jar ~/bin/ripme.jar'
alias hop='sudo apt update'
alias skip='apt list --upgradable'
alias jump='sudo apt upgrade'
alias ls='exa --icons'
alias ,search='~/bin/ellies-bash-scripts/modules/search.sh'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
alias slowprint='java -jar /home/ellie/repos/slowprintJava/src/SlowPrint.jar -s 5'
alias batcat='batcat --color="always" --pager="Never"'
alias ellieDate='date +%Y/%m/%d | adate.py'


#    ______     __         __         __     ______     ______    
#   /\  ___\   /\ \       /\ \       /\ \   /\  ___\   /\  ___\   
#   \ \  __\   \ \ \____  \ \ \____  \ \ \  \ \  __\   \ \___  \  
#    \ \_____\  \ \_____\  \ \_____\  \ \_\  \ \_____\  \/\_____\ 
#     \/_____/   \/_____/   \/_____/   \/_/   \/_____/   \/_____/ 
#    ______   __  __     __   __     ______     ______    
#   /\  ___\ /\ \/\ \   /\ "-.\ \   /\  ___\   /\  ___\   
#   \ \  __\ \ \ \_\ \  \ \ \-.  \  \ \ \____  \ \___  \  
#    \ \_\    \ \_____\  \ \_\\"\_\  \ \_____\  \/\_____\ 
#     \/_/     \/_____/   \/_/ \/_/   \/_____/   \/_____/ 
#                                                         
source ~/bin/ellies-bash-scripts/modules/copyFile.sh
function SlowPrintColor(){
    batcat --color always --pager=never $1 | java -jar /home/ellie/repos/slowprintJava/src/SlowPrint.jar -s 5
}



# ______     __   __     __   __  
#/\  ___\   /\ "-.\ \   /\ \ / /  
#\ \  __\   \ \ \-.  \  \ \ \'/   
# \ \_____\  \ \_\\"\_\  \ \__|   
#  \/_____/   \/_/ \/_/   \/_/    
export PLAYDATE_SDK_PATH=/home/ellie/repos/PlaydateSDK-1.12.3
export UXN_HOME=/home/ellie/repos/UXN_MASTER
export OPENAI_API_KEY='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'


#  ______   ______     ______   __  __     ______    
# /\  == \ /\  __ \   /\__  _\ /\ \_\ \   /\  ___\   
# \ \  _-/ \ \  __ \  \/_/\ \/ \ \  __ \  \ \___  \  
#  \ \_\    \ \_\ \_\    \ \_\  \ \_\ \_\  \/\_____\ 
#   \/_/     \/_/\/_/     \/_/   \/_/\/_/   \/_____/ 
path+=('/home/ellie/repos/PlaydateSDK-1.12.3/bin'); export PATH
path+=('/home/ellie/.cargo/bin/');                  export PATH
path+=('/home/ellie/go/bin');                       export PATH
path+=('/home/ellie/.nimble/bin');                  export PATH
path+=('/home/ellie/.nimble/bin');                  export PATH
path+=('/home/ellie/repos/UXN_MASTER/uxn/bin');     export PATH
