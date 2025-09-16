local lspconfig = require('lspconfig')

lspconfig.clangd.setup{
    cmd = { "clangd" },  
    filetypes = { "c", "cpp", "objc", "objcpp" },
    root_dir = lspconfig.util.root_pattern("compile_commands.json", ".git"),
}

return {
    "p00f/clangd_extensions.nvim",
    config = function() end,
    opts = {
        inlay_hints = {
            inline = false,
        },
        ast = {
            role_icons = {
                type = "",
                declaration = "",
                expression = "",
                specifier = "",
                statement = "",
                ["template argument"] = "",
            },
            kind_icons = {
                Compound = "",
                Recovery = "",
                TranslationUnit = "",
                PackExpansion = "",
                TemplateTypeParm = "",
                TemplateTemplateParm = "",
                TemplateParamObject = "",
            },
        },
    },
}
