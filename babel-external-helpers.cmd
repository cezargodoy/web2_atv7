@IF EXIST "%~dp0\node.exe" (
  "%~dp0\node.exe"  "%~dp0\..\@babel\cli\bin\babel-external-helpers.js" %*
) ELSE (
  @SETLOCAL
  @SET PATHEXT=%PATHEXT:;.JS;=;%
  node  "%~dp0\..\@babel\cli\bin\babel-external-helpers.js" %*
)