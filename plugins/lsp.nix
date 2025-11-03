{ ... }:
{
  plugins.lsp = {
    enable = true;

    servers = {
      bashls.enable = true;

      clangd.enable = true;

      cmake.enable = true;

      #java-lanuage-server.enable = true;

      jsonls.enable = true;

      lua_ls.enable = true;

      nixd.enable = true;
    
      pyright.enable = true;

      rust_analyzer = {
        enable = true;
        installCargo = false;
        installRustc = false;
      };

      ts_ls.enable = true;
    };
  };
}
