require 'spec_helper'

describe 'pandorafms' do
  let(:title) { 'pandorafms' }

  ['Debian', 'RedHat'].each do |osfamily|
    describe "pandorafms class without any parameters on #{osfamily}" do 
      let(:params) {{ }}
      let(:facts) { { :osfamily => osfamily } }

      it { should create_class('pandorafms') }
      it { should create_package('pandorafms') }
      it { should create_file('/etc/pandorafms.conf') }
      it {
        should create_file('/etc/pandorafms.conf')\
        .with_content(/^server pool.pandorafms.org$/)
      }
      if osfamily == 'RedHat' 
        it { should create_service('pandorafmsd') }
      else
        it { should create_service('pandorafms') }
      end
    end
  end
end
