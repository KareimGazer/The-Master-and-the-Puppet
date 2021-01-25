#ensures the lates network time protocol is up and running

class ntp
{
    package
    {
        'ntp': ensure => latest,
    }

    file
    {
        '/etc/ntp.confg': 
            source => 'puppet://modules/ntp/ntp.conf'
            replace => true,
    }

    service
    {
        'ntp':
            enable => true,
            ensure => running,
    }
}