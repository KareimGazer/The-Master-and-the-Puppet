#setups smart package if the machine is not virtual
#smart is a package for monitoring hardisks

class smart
{
  if $facts['is_virtual']
  {
    package
    {
      'smartmontools': ensure => purged,
    }
  }
  else
  {
    package
    {
      'smartmontools': ensure => installed,
    }
  }
}
