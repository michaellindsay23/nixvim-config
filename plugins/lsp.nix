{ ... }:
{
  plugins.lsp = {
    enable = true;

    servers = {
      bashls.enable = true;

      clangd.enable = true;

      cmake.enable = true;

      glslls.enable = true;

      java_language_server.enable = true;
      jdtls.enable = true;

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

      hls = {
        enable = true;
        installGhc = true;
      };
    };
  };
}
