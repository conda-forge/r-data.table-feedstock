:: manual patch
:: NB: This should be removed in the next release!
bzip2 -d inst\tests\tests.Rraw.bz2
git apply < %RECIPE_DIR%\patches\0001-conditional-test-1623.patch
bzip2 inst\tests\tests.Rraw

"%R%" CMD INSTALL --build . %R_ARGS%
IF %ERRORLEVEL% NEQ 0 exit /B 1
