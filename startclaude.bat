@echo off
REM WARNING: Do not hardcode API keys in this file. Set DEEPSEEK_API_KEY as an env var.
if "%DEEPSEEK_API_KEY%"=="" (
  echo Error: DEEPSEEK_API_KEY environment variable not set.
  echo Set it before running: set DEEPSEEK_API_KEY=your-key-here
  exit /b 1
)
powershell.exe -ExecutionPolicy Bypass -File StartClaudeDeepSeek.ps1 -DeepSeekKey "%DEEPSEEK_API_KEY%"