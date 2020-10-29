Import-Module PowerLine
Set-PowerLinePrompt -PowerLineFont -SetCurrentDirectory -RestoreVirtualTerminal -Colors "#FFDD00", "#FF6600"

[System.Collections.Generic.List[ScriptBlock]]$Prompt = @(
    { "$env:USERNAME" }
    { $executionContext.SessionState.Path.CurrentLocation }
    { '>' * ($nestedPromptLevel + 1) }
)

Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Paradox

# https://docs.microsoft.com/en-us/windows/terminal/tutorials/powerline-setup