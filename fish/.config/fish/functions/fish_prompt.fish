function fish_prompt --description 'Informative prompt'
    #Save the return status of the previous command
    set -l last_pipestatus $pipestatus
    set -lx __fish_last_status $status # Export for __fish_print_pipestatus.

    # current_dir replace user/home with -> ~
    set -l current_dir (string replace -r "^$HOME" '~' $PWD)

    # git info
    set -l git_branch (__fish_vcs_prompt)

    if functions -q fish_is_root_user; and fish_is_root_user
        printf '%s@%s %s%s%s# ' $USER (prompt_hostname) (set -q fish_color_cwd_root
        and set_color $fish_color_cwd_root
        or set_color $fish_color_cwd) \
            (prompt_pwd) (set_color normal)
    else
        set -l status_color (set_color $fish_color_status)
        set -l statusb_color (set_color --bold $fish_color_status)
        set -l pipestatus_string (__fish_print_pipestatus "[" "]" "|" "$status_color" "$statusb_color" $last_pipestatus)

        set -l time (date "+%H:%M:%S")
        set -l user (set_color brblue)$USER
        set -l host (set_color brblue)(prompt_hostname)
        
        printf '%s@%s %s%s %s%s %s\n> ' \
            $host $user \
            (set_color $fish_color_cwd) $current_dir \
            (set_color normal) $git_branch \
            $pipestatus_string 

    end
end
