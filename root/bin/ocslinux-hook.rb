#!/usr/bin/env ruby

OCSLINUX_HOOK_VERSION = "0.01"

puts "OCS Linux Maintenance Utility Version #{OCSLINUX_HOOK_VERSION}"
puts "Copyright (C) 2016 OCS Solutions, Inc.  All Rights Reserved."
puts "This software is licensed under the GPL version 3."
puts

require "fileutils"
require_relative "../lib/colorize.rb"
require_relative "../lib/ocslinux/console.rb"

include OCSLinux

# Install skeleton files
print "Installing user default files "

unless Dir.exists? "/etc/skel.debian"
  system "mv /etc/skel /etc/skel.debian"
end

FileUtils.ln_s "/ocslinux/etc/skel", "/etc/skel", :force => true

Console.output_ok

# All done
puts
