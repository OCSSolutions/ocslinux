# Console methods for OCS Linux

module OCSLinux

  class Console
    
    def self.output_ok
      print "[ "
      print "OK".green
      puts " ]"
    end

    def self.output_error
      print "[ "
      print "ERROR".red
      puts " ]"
    end

    def self.output_newline
      print "\n"
    end

  end

end
