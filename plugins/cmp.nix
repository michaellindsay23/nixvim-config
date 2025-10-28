{ pkgs, ... }:
{  
  extraLuaPackages = ps: [
    # Required by luasnip
    ps.jsregexp
  ];
  
  plugins = {

    # Snippet Engine & its associated nvim-cmp source
    # https://nix-community.github.io/nixvim/plugins/luasnip/index.html
    luasnip = {
      enable = true;
    };

    # https://nix-community.github.io/nixvim/plugins/cmp-nvim-lsp.html
    cmp-nvim-lsp  = {
      enable = true;
    };
  
    # https://nix-community.github.io/nixvim/plugins/cmp-path.html
    cmp-path = {
      enable = true;
    };

  
    cmp = {
      enable = true;
  
      settings = {
        snippet = {
          expand = ''
            function(args)
  	    require('luasnip').lsp_expand(args.body)
  	  end
  	'';
        };
  
        completion = {
          completeopt = "menu, menuone, noinsert";
        };
  
        # See ``:help ins-completion`
        mapping = {
          # Select next item
  	"<TAB>" = "cmp.mapping.select_next_item()";
  	"<down>" = "cmp.mapping.select_next_item()";
  
          # Select previous item
  	"<S-TAB>" = "cmp.mapping.select_prev_item()";
  	"<up>" = "cmp.mapping.select_prev_item()";
  
          # Accept Completion
          "<CR>" = "cmp.mapping.confirm { select = true }";
        };
      };
    };
  };
}
