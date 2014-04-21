$enhancers = [ "puppet", "apache2", "libapache2-mod-passenger", "rails", "librack-ruby", "libmysql-ruby", "wget", "unzip", "nano" ]

package { $enhancers: ensure => "installed" }

