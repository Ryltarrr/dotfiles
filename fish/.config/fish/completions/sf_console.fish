[2022-11-23T17:17:16.067610+01:00] deprecation.INFO: User Deprecated: The "Monolog\Logger" class is considered final. It may change without further notice as of its next major version. You should not extend it from "Symfony\Bridge\Monolog\Logger". {"exception":"[object] (ErrorException(code: 0): User Deprecated: The \"Monolog\\Logger\" class is considered final. It may change without further notice as of its next major version. You should not extend it from \"Symfony\\Bridge\\Monolog\\Logger\". at /home/justin/Documents/presence-management/vendor/symfony/error-handler/DebugClassLoader.php:331)"} []
# This file is part of the Symfony package.
#
# (c) Fabien Potencier <fabien@symfony.com>
#
# For the full copyright and license information, please view
# https://symfony.com/doc/current/contributing/code/license.html

function _sf_console
    set sf_cmd (commandline -o)
    set c (count (commandline -oc))

    set completecmd "$sf_cmd[1]" "_complete" "--no-interaction" "-sfish" "-S6.1.6"

    for i in $sf_cmd
        if [ $i != "" ]
            set completecmd $completecmd "-i$i"
        end
    end

    set completecmd $completecmd "-c$c"

    set sfcomplete ($completecmd)

    for i in $sfcomplete
        echo $i
    end
end

complete -c 'console' -a '(_sf_console)' -f
