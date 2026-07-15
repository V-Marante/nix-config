{ pkgs, ... }:

{
  programs.helix.extraPackages = with pkgs; [
    roslyn-ls
    csharpier
  ];

  programs.helix.languages = {
    language-server = {
      roslyn = {
        command = "Microsoft.CodeAnalysis.LanguageServer";
        args = [ "--stdio" ];
      };

      gopls = {
        command = "gopls";
        args = [ "-logfile=/tmp/gopls.log" "serve" ];
        config = {
          "ui.diagnostic.staticcheck" = true;  
        };
      };
    };

    

    language = [
      {
        name = "c-sharp";
        language-servers = [ "roslyn" ];
        formatter = {
          command = "csharpier";
        };
      }

      {
        name = "python";
        language-servers = [ "pyright" ];
        indent = {
          tab-width = 4;
          unit = "    ";
        };
      }

      {
        name = "bash";
        indent = {
          tab-width = 4;
          unit = "    ";
        };
      }

      {
        name = "toml";
        indent = {
          tab-width = 4;
          unit = "    ";
        };
      }

      {
        name = "xml";
        indent = {
          tab-width = 4;
          unit = "    ";
        };
      }

      {
        name = "go";
        indent = {
          tab-width = 4;
          unit = "    ";
        };
      }

      {
        name = "nix";
        indent = {
          tab-width = 4;
          unit = "  ";
        };
      }

      {
        name = "scheme";
        indent = {
          tab-width = 4;
          unit = "    ";
        };
      }
    ];
  };
}
