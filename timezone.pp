#time zone file may not be found in some systems
#this scripts ensures its creation and sets the time zone
class timezone
{
    file
    {
        '/etc/timezone': 
            ensure => file,
            content => 'UTC\n',
            replace => true,
    }
}
