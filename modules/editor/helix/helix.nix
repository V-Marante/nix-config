{ pkgs-unstable, ... }:

{
  programs.helix = {
    enable = true;
    package = pkgs-unstable.steelix;

    settings = {
       theme = "catppuccin_mocha";

      keys.normal = {
        C-s = ":w!";
        C-w = ":buffer-close!";
        C-a = ":reload-all";
        y = [ ":clipboard-yank"  "yank" ];
        C-v = [ ":clipboard-paste-before" ];
      };

      keys.insert = {
        C-s = ":w!";
        C-w = ":buffer-close";
        C-a = ":reload-all";
        y = [":clipboard-yank"  "yank"];
        C-v = [":clipboard-paste-before"];
        C-right = [":bn"];
        C-left = [":bp"];
        X = ["extend_line_up"  "extend_to_line_bounds"];
        c = "change_selection_noyank";
 };

      keys.select = {
        y = [":clipboard-yank"  "yank"];
        X = ["extend_line_up"  "extend_to_line_bounds"];
      };

      
      editor = {
        line-number = "relative";
        bufferline = "alwas";
        mouse = false;
        
        true-color = true;
        color-modes = true;
        rainbow-brackets = true;

        auto-completion = true;
        completion-trigger-len = 2;
        completion-timeout = 5;
        continue-comments = false;

        cursor-shape = {
          insert = "bar";
          normal = "block";
          select = "underline";
        };

        indent-guides = {
          render = true;
          character = "|";
          skip-levels = 1;
        };

        statusline = {
          left = [ "mode" "spinner" "file-name" ];
          center = [ "version-control" ];
          right = [ "diagnostics" "selections" "position" "file-encoding" "file-line-ending" "file-type" ];
          separator = "│";
          mode = {
            normal = "NOR";
            insert = "INS";
            select = "SEL";
          };
        };
      };
    };
  };
}
