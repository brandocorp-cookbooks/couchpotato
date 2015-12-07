require 'spec_helper'

describe 'couchpotato::default' do
  describe port('5050') do
    it { is_expected.to be_listening }
  end

  describe user('couchpotato') do
    it { is_expected.to exist }
  end

  describe file('/opt/couchpotato') do
    it { is_expected.to be_directory }
  end

  describe file('/opt/couchpotato/version.py') do
    its(:content) { is_expected.to contain '3.0.1' }
  end

  describe file('/etc/init.d/couchpotato') do
    it { is_expected.to be_file }
    it { is_expected.to be_mode 755 }
  end

  describe file('/etc/default/couchpotato') do
    it { is_expected.to be_file }
    it { is_expected.to be_mode 644 }
  end
end
