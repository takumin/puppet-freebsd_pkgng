require 'spec_helper'

describe 'freebsd_pkgng' do
  context 'supported operating systems' do
    ['Debian', 'RedHat'].each do |osfamily|
      describe "freebsd_pkgng class without any parameters on #{osfamily}" do
        let(:params) {{ }}
        let(:facts) {{
          :osfamily => osfamily,
        }}

        it { should compile.with_all_deps }

        it { should contain_class('freebsd_pkgng::params') }
        it { should contain_class('freebsd_pkgng::install').that_comes_before('freebsd_pkgng::config') }
        it { should contain_class('freebsd_pkgng::config') }
        it { should contain_class('freebsd_pkgng::service').that_subscribes_to('freebsd_pkgng::config') }

        it { should contain_service('freebsd_pkgng') }
        it { should contain_package('freebsd_pkgng').with_ensure('present') }
      end
    end
  end

  context 'unsupported operating system' do
    describe 'freebsd_pkgng class without any parameters on Solaris/Nexenta' do
      let(:facts) {{
        :osfamily        => 'Solaris',
        :operatingsystem => 'Nexenta',
      }}

      it { expect { should contain_package('freebsd_pkgng') }.to raise_error(Puppet::Error, /Nexenta not supported/) }
    end
  end
end
