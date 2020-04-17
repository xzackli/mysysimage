## my julia sysimage for general science use

My `settings.json`. I put this repository in `$HOME/Projects`.

```json
{
  "julia.enableTelemetry": true,
  "workbench.colorTheme": "Monokai Pro",
  "workbench.iconTheme": "Monokai Pro Icons",
  "julia.NumThreads": 16,
  "window.zoomLevel": 1,
  "editor.fontFamily": "Iosevka Nerd Font, Source Code Pro, Menlo, Monaco, 'Courier New', monospace",
  "python.dataScience.askForKernelRestart": false,
  "editor.rulers": [92],
  "terminal.integrated.inheritEnv": false,
  "python.formatting.provider": "black",
  "git.ignoreLegacyWarning": true,
  "editor.suggestSelection": "first",
  "vsintellicode.modify.editor.suggestSelection": "automaticallyOverrodeDefaultValue",
  "python.jediEnabled": false,
  "python.dataScience.remoteDebuggerPort": 9809,
  "editor.formatOnSave": true,
  "julia.useCustomSysimage": false,
  "julia.additionalArgs": [
    "--sysimage=${env:HOME}/Projects/mysysimage/mysys.dylib"
  ]
}
```
