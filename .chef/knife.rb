# See http://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "cristi"
client_key               "#{current_dir}/cristi.pem"
validation_client_name   "satyga-validator"
validation_key           "#{curent_dir}/satyga-validator.pem"
chef_server_url          "https://api.chef.io/organizations/satyga"
cache_type               "BasicFile"
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
cookbook_copyright       "satyga"
cookbook_license         "apachev2"
cookbook_email           "cristineagu2801@gmail.com"
