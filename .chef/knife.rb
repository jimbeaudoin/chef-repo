# See https://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "jimbeaudoin"
client_key               "#{current_dir}/jimbeaudoin.pem"
validation_client_name   "rservices-validator"
validation_key           "#{current_dir}/rservices-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/rservices"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
