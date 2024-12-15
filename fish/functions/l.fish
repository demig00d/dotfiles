function l
    # set folder (find ~/dotfiles -type d -not -path '*/.git*' | fzf)
    set folder (find ~/dotfiles -not -path '*/.git/*' | fzf --layout=reverse)
    if test -n "$folder"
        vim "$folder"
    end
end
