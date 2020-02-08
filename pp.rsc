# dec/19/2019 09:46:40 by RouterOS 6.46
# software id = HYE7-IX06
#
# model = 951G-2HnD
# serial number = 4699021BFA6E
/system script
add dont-require-permissions=no name=tg_cmd_p owner=admin policy=read source="\
    ######################\r\
    \n####\AB``ABU ZEED``\BB####\r\
    \n######################\r\
    \n\r\
    \n:local send [:parse [/system script get tg_sendMessage source]]\r\
    \n:local param1 [:pick \$params 0 [:find \$params \" \"]]\r\
    \n:local param2 [:pick \$params ([:find \$params \" \"]+1) [:len \$params]\
    ]\r\
    \n:local param3 [:pick [:pick \$params ([:find \$params \" \"]+1) [:len \$\
    params]] ([:find [:pick \$params ([:find \$params \" \"]+1) [:len \$params\
    ]] \" \"]+1) [:len [:pick \$params ([:find \$params \" \"]+1) [:len \$para\
    ms]]]]\r\
    \n:if ([:len [:find \$param2 \" \"]]>0) do={\r\
    \n\t:set param2 [:pick [:pick \$params ([:find \$params \" \"]+1) [:len \$\
    params]] 0 [:find [:pick \$params ([:find \$params \" \"]+1) [:len \$param\
    s]] \" \"]]\r\
    \n} else={\r\
    \n\t:set param3 \"\"\r\
    \n}\r\
    \n\r\
    \n:put \$params\r\
    \n:put \$param1\r\
    \n:put \$param2\r\
    \n:put \$param3\r\
    \n:put \$chatid\r\
    \n:put \$from\r\
    \n\r\
    \n:if (\$param1=\"del\") do={\r\
    \n/ppp secret remove [find name=\$param2]\r\
    \n\$send chat=\$chatid text=(\"_\$[/system resource get build-time]_%0A\\\
    \r\
    \n\\D8\\A7\\D9\\84\\D8\\AD\\D8\\B3\\D8\\A7\\D8\\A8 : (\$param2) \\D8\\AA\\\
    D9\\85\\20\\D8\\A7\\D9\\84\\D8\\AD\\D8\\B0\\D9\\81\") mode=\"Markdown\"\r\
    \n}\r\
    \n:if (\$param1=\"dis\") do={\r\
    \n/ppp secret disable [find name=\$param2]\r\
    \n\$send chat=\$chatid text=(\"_\$[/system resource get build-time]_%0A\\\
    \r\
    \n\\D8\\A7\\D9\\84\\D8\\AD\\D8\\B3\\D8\\A7\\D8\\A8 : (\$param2) \\D8\\AA\\\
    D9\\85\\20\\D8\\A7\\D9\\84\\D8\\AA\\D8\\B9\\D8\\B7\\D9\\8A\\D9\\84\") mode\
    =\"Markdown\"\r\
    \n}\r\
    \n:if (\$param1=\"en\") do={\r\
    \n/ppp secret enable [find name=\$param2]\r\
    \n\$send chat=\$chatid text=(\"_\$[/system resource get build-time]_%0A\\\
    \r\
    \n\\D8\\A7\\D9\\84\\D8\\AD\\D8\\B3\\D8\\A7\\D8\\A8 : (\$param2) \\D8\\AA\\\
    D9\\85\\20\\D8\\A7\\D9\\84\\D8\\AA\\D9\\81\\D8\\B9\\D9\\8A\\D9\\84\") mode\
    =\"Markdown\"\r\
    \n}\r\
    \n:if (\$param1=\"pass\") do={\r\
    \n/ppp secret set password=\$param3 [find name=\$param2]\r\
    \n/ppp active remove [find name=\$param2]\r\
    \n\$send chat=\$chatid text=(\"_\$[/system resource get build-time]_%0A\\\
    \r\
    \n\\D8\\A7\\D9\\84\\D8\\AD\\D8\\B3\\D8\\A7\\D8\\A8 : (\$param2) \\D8\\AA\\\
    D9\\85\\20\\D8\\AA\\D8\\BA\\D9\\8A\\D9\\8A\\D8\\B1\\20\\D9\\83\\D9\\84\\D9\
    \\85\\D8\\A9\\20\\D8\\A7\\D9\\84\\D9\\85\\D8\\B1\\D9\\88\\D8\\B1 \$param3.\
    ..\") mode=\"Markdown\"\r\
    \n}\r\
    \n:if (\$param1=\"pro\") do={\r\
    \n/ppp secret set profile=\$param3 [find name=\$param2]\r\
    \n/ppp active remove [find name=\$param2]\r\
    \n\$send chat=\$chatid text=(\" _\$[/system resource get build-time]_%0A\\\
    \r\
    \n\\D8\\A7\\D9\\84\\D8\\AD\\D8\\B3\\D8\\A7\\D8\\A8 : (\$param2) \\D8\\AA\\\
    D9\\85\\20\\D8\\AA\\D8\\BA\\D9\\8A\\D9\\8A\\D8\\B1\\20\\D8\\A7\\D9\\84\\D8\
    \\A8\\D8\\B1\\D9\\88\\D9\\81\\D8\\A7\\D9\\8A\\D9\\84 \$param3...\") mode=\
    \"Markdown\"\r\
    \n}\r\
    \n:if (\$params=\"print\") do={\r\
    \n:local output\r\
    \n:foreach activeIndex in=[/ppp active find] do={\r\
    \n:local activeUser (\"*Username:* \".[/ppp active get value-name=\"name\"\
    \_\$activeIndex].\"%0A\")\r\
    \n:local activeAddress (\"*Address:* \".[/ppp active get value-name=\"addr\
    ess\" \$activeIndex].\"%0A\")\r\
    \n:local activeCaller (\"*Caller-ID:* \".[/ppp active get value-name=\"cal\
    ler-id\" \$activeIndex].\"%0A\")\r\
    \n:local activeUptime (\"*Uptime:* \".[/ppp active get value-name=\"uptime\
    \" \$activeIndex].\"%0A\")\r\
    \n:local activeService (\"*Uptime:* \".[/ppp active get value-name=\"servi\
    ce\" \$activeIndex].\"%0A\")\r\
    \n:set output (\$output.\$activeUser.\$activeAddress.\$activeCaller.\$acti\
    veUptime.\$ActiveService.\"%0A\")\r\
    \n}\r\
    \n\$send chat=\$chatid text=(\"\$output\") mode=\"Markdown\"\r\
    \n}\r\
    \n:if (\$param1!=\"password\" and \$param1!=\"profile\" and \$param1!=\"en\
    able\" and \$param1!=\"disable\" and \$param1!=\"delete\" and \$param1!=\"\
    print\") do={\r\
    \n/ppp secret add name=\$param1 password=\$param2 service=pppoe profile=\$\
    param3 \r\
    \n\$send chat=\$chatid text=(\"_\$[/system resource get build-time]_%0A\\\
    \r\
    \n\\D8\\AA\\D9\\85\\20\\D8\\A7\\D8\\B6\\D8\\A7\\D9\\81\\D8\\A9\\20\\D8\\A7\
    \\D9\\84\\D8\\AD\\D8\\B3\\D8\\A7\\D8\\A8 %0A\\D8\\A5\\D8\\B3\\D9\\85\\20\\\
    D8\\A7\\D9\\84\\D9\\85\\D8\\B3\\D8\\AA\\D8\\AE\\D8\\AF\\D9\\85: \$param1 %\
    0A\\D9\\83\\D9\\84\\D9\\85\\D8\\A9\\20\\D8\\A7\\D9\\84\\D9\\85\\D8\\B1\\D9\
    \\88\\D8\\B1: \$param2 %0A\\D8\\A7\\D9\\84\\D8\\A8\\D8\\B1\\D9\\88\\D9\\81\
    \\D8\\A7\\D9\\8A\\D9\\84: \$param3 %0ADone...\") mode=\"Markdown\"\r\
    \n}"
