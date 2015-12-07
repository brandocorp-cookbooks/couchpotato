#
# Cookbook Name:: couchpotato
# Recipe:: default
#
# Copyright 2015 Brandon Raabe
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
include_recipe 'build-essential'

%w(
  git
  libffi-dev
  libxml2-dev
  libxslt-dev
  python-dev
).each do |dep|
  package dep
end

python_runtime '2'
python_package 'pyopenssl'
python_package 'lxml'

git couchpotato_home do
  repository couchpotato_repository
  revision tagged_revision_for_version
  action :sync
end

user 'couchpotato' do
  home node['couchpotato']['home']
  manage_home true
  system true
end

# @TODO create resource/provider
# couchpotato_server '/opt/couchpotato' do
#   quiet true
#   nolaunch true
#   pidfile nil
#   port '5050'
#   datadir
#   config
#   noresize
# end

template '/etc/init.d/couchpotato' do
  source 'couchpotato.init.erb'
  owner 'root'
  group 'root'
  mode '0755'
  notifies :restart, 'service[couchpotato]', :delayed
end

template '/etc/default/couchpotato' do
  source 'couchpotato.defaults.erb'
  owner 'root'
  group 'root'
  mode '0644'
  notifies :restart, 'service[couchpotato]', :delayed
end


# The application writes to this file as changes are made, so managing it with
# Chef is nearly pointless.
directory '/var/opt/couchpotato' do
  owner 'couchpotato'
  group 'couchpotato'
  mode '0755'
  recursive true
end

template '/var/opt/couchpotato/settings.conf' do
  source 'couchpotato.ini.erb'
  owner 'couchpotato'
  group 'couchpotato'
  mode '0644'
  action :create_if_missing
end

service 'couchpotato' do
  supports [:restart, :status]
  action [:enable, :start]
end
