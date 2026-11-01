function fish_prompt
        set -l symbol ' $ '
        set -l color $fish_color_user
        if fish_is_root_user
                set symbol ' # '
                set -q fish_color_cwd_root
                and set color $fish_color_cwd_root
        end


        set_color $color
        echo -n $USER
        set_color --reset

        echo -n ' in '
    
        set_color $fish_color_escape
        echo -n (prompt_pwd)
        set_color --reset
    
        echo -n $symbol
end
