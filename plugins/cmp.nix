{ pkgs, ... }:
{  
  extraLuaPackages = ps: [
    # Required by luasnip
    ps.jsregexp
  ];
  
  plugins = {

    # Snippet Engine & its associated nvim-cmp source
    # https://nix-community.github.io/nixvim/plugins/luasnip/index.html
    luasnip.enable = true;

    # https://nix-community.github.io/nixvim/plugins/cmp-nvim-lsp.html
    cmp-nvim-lsp.enable = true;
  
    # https://nix-community.github.io/nixvim/plugins/cmp-path.html
    cmp-path.enable = true;
    
    # https://nix-community.github.io/nixvim/plugins/cmp-buffer.html
    cmp-buffer.enable = true;

    # https://nix-community.github.io/nixvim/plugins/cmp_luasnip.html
    cmp_luasnip.enable = true;

  
    cmp = {
      enable = true;
  
      settings = {
        #experimental = { ghost_text = true; };

        snippet.expand = ''
            function(args)
  	          require('luasnip').lsp_expand(args.body)
  	        end
  	    '';

        sources = [
          { name = "nvim_lsp"; }
          { name = "luasnip"; }
          {
            name = "buffer";
            option.get_bufnrs.__raw = "vim.api.nvim_list_bufs";
          }
          { name = "nvim_lua"; }
          { name = "path"; }
        ];
  
        completion = {
          completeopt = "menu, menuone, noinsert";
        };
  
        # See ``:help ins-completion`
        mapping = {
          # Select next item
  	      "<TAB>" = "cmp.mapping.select_next_item()";
  
          # Select previous item
  	      "<S-TAB>" = "cmp.mapping.select_prev_item()";
  
          # Accept Completion
          "<CR>" = "cmp.mapping.confirm { select = true }";
        };
      };
    };
  };
}
