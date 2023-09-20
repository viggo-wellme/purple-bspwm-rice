function fish_prompt -d "Write out the prompt"
    # This shows up as USER@HOST /home/user/ >, with the directory colored
    # $USER and $hostname are set by fish, so you can just use them
    # instead of using `whoami` and `hostname`
    printf (set_color --bold magenta)'%s'(set_color normal)' %s %s%s%s%s' $USER \
        () (prompt_pwd) (set_color normal)
end
