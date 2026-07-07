{ ... }:

{
  programs.helix.languages = {
    language = [

      {
        name = "c-sharp";
        language-servers = [ "omnisharp" ];
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
