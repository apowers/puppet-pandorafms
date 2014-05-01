# This host is monitored by PandoraFMS
Facter.add(:pandorafms_version) do
  case Facter.value(:osfamily)
  when 'Debian'
    setcode '/usr/bin/dpkg -l pandora* 2>/dev/null| /usr/bin/awk \'{if ($1 == "ii"){print $3}}\''
  else
    setcode puts 'unknown'
  end
end
