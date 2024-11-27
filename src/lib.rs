use zed_extension_api::{self as zed, settings::LspSettings, LanguageServerId, Result};

struct WgslAnalyzer;

impl WgslAnalyzer {
    const BINARY_NAME: &'static str = "wgsl_analyzer";
    const LANGUAGE_SERVER_NAME: &'static str = "wgsl-analyzer";
}

impl zed::Extension for WgslAnalyzer {
    fn new() -> Self {
        Self
    }

    fn language_server_command(
        &mut self,
        _language_server_id: &LanguageServerId,
        worktree: &zed_extension_api::Worktree,
    ) -> Result<zed_extension_api::Command> {
        let command = worktree
            .which(Self::BINARY_NAME)
            .ok_or_else(|| {
                format!(
                    "{} must be installed manually as '{}' using cargo. See https://github.com/wgsl-analyzer/wgsl-analyzer for details.",
                    Self::LANGUAGE_SERVER_NAME,
                    Self::BINARY_NAME
                )
            })?;

        let args = LspSettings::for_worktree(Self::LANGUAGE_SERVER_NAME, worktree)
            .map(|lsp_settings| {
                lsp_settings
                    .binary
                    .and_then(|binary| binary.arguments)
                    .unwrap_or_default()
            })
            .unwrap_or_default();

        Ok(zed::Command {
            command,
            args,
            env: worktree.shell_env(),
        })
    }
}

zed::register_extension!(WgslAnalyzer);
