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
    
      pylsp.enable = true;

      rust_analyzer = {
        enable = true;
        installCargo = false;
        installRustc = true;
      };

      ts_ls.enable = true;

      typst-analyzer.enable = true;

      hls = {
        enable = true;
        installGhc = true;
      };

      html.enable = true;

      cssls.enable = true;
    };
  };
}
