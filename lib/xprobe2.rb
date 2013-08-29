# Ruby Wrapper for:  Xprobe2 v.0.3 Copyright (c) 2002-2005 fyodor@o0o.nu, ofir@sys-security.com, meder@o0o.nu
require 'rprogram/task'
require 'rprogram/program'
# class for options mgmt
class Xprobe2Task < RProgram::Task
  non_option :tailing => true, :name => :target

  # -v Be verbose
  short_option :flag => '-v', :name => :verbose

  # -r Show route to target(traceroute)
  short_option :flag => '-r', :name => :show_route

  # -p <proto:portnum:state> Specify portnumber, protocol and state.
  # Example: tcp:23:open, UDP:53:CLOSED
  long_option :flag => '-p', :name => :portnum_protocol_state

  # -c <configfile> Specify config file to use.
  long_option :flag => '-c', :name => :config_file

  # -o <fname> Use logfile to log everything.
  long_option :flag => '-o', :name => :ouput_file

  # -t <time_sec> Set initial receive timeout or roundtrip time.
  long_option :flag => '-t', :name => :timeout

  # -s <send_delay> Set packsending delay (milseconds).
  long_option :flag => '-s', :name => :send_delay

  # -d <debuglv> Specify debugging level.
  long_option :flag => '-d', :name => :debug_level

  # -D <modnum> Disable module number <modnum>.
  long_option :flag => '-D', :name => :disable_module

  # -M <modnum> Enable module number <modnum>.
  long_option :flag => '-M', :name => :enable_module

  # -L Display modules.
  short_option :flag => '-L', :name => :display_modules

  # -m <numofmatches> Specify number of matches to print.
  long_option :flag => '-m', :name => :number_of_matches_to_print

  # -T <portspec> Enable TCP portscan for specified port(s).
  #               Example: -T21-23,53,110
  long_option :flag => '-T', :name => :ports, :multiple => true

  # -U <portspec> Enable UDP portscan for specified port(s).
  long_option :flag => '-U', :name => :udp_ports, :multiple => true

  # -f force fixed round-trip time (-t opt).
  short_option :flag => '-f', :name => :force_fixed_round_trip_time

  # -F Generate signature (use -o to save to a file).
  short_option :flag => '-F', :name => :generate_signature

  # -X Generate XML output and save it to logfile specified with -o.
  short_option :flag => '-X', :name => :xml_output

  # -B Options forces TCP handshake module to try to guess open TCP port
  short_option :flag => '-B', :name => :force_tcp_handshake

  # -A Perform analysis of sample packets gathered during portscan in
  #    order to detect suspicious traffic (i.e. transparent proxies,
  #    firewalls/NIDSs resetting connections). Use with -T.
  #
  # TODO: Depends on -T
  #
  short_option :flag => '-A', :name => :detect_suspicion_traffic

end

class Xprobe2 < RProgram::Program
  # identify the file-name of the program
  name_program 'xprobe2'

  # add a top-level method which finds and runs your program.
  def self.my_run(options={},&block)
    self.find.my_run(options,&block)
  end

  # add a method which runs the program with Xprobe2Task options
  def my_run(options={},&block)
    run_task(Xprobe2Task.new(options,&block))
  end
end

