#
# Cookbook Name:: nginx
# Attributes:: source
#
# Author:: Jean-Sébastien Ney (<jeansebastien.ney@gmail.com>)
#
# Copyright 2012, nu8un
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
#

include_attribute 'nginx'

default['nginx']['openresty']['version']                 = "1.2.3.8" # last stable release
default['nginx']['openresty']['prefix']                  = "/opt/openresty-#{node['nginx']['openresty']['version']}"
default['nginx']['openresty']['conf_path']               = "#{node['nginx']['dir']}/nginx.conf"
default['nginx']['openresty']['default_configure_flags'] = [
  "--prefix=#{node['nginx']['openresty']['prefix']}",
  "--conf-path=#{node['nginx']['dir']}/nginx.conf"
]

default['nginx']['configure_flags']    = []
default['nginx']['openresty']['url']      = "http://agentzh.org/misc/nginx/ngx_openresty-#{node['nginx']['openresty']['version']}.tar.gz"
default['nginx']['openresty']['checksum'] = "2a9658a32d383304bb67d6a6c41528883ba5276f15d361ea4e81115801421d3c"
default['nginx']['openresty']['modules']  = [
  "http_ssl_module",
  "http_gzip_static_module"
]
