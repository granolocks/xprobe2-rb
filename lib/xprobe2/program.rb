module Xprobe2
  class Program < RProgram::Program
    # identify the file-name of the program
    name_program 'xprobe2'

    # add a top-level method which finds and runs your program.
    def self.my_run(options={},&block)
      self.find.my_run(options,&block)
    end

    # add a method which runs the program with Xprobe2Task options
    def my_run(options={},&block)
      run_task(Xprobe2::Task.new(options,&block))
    end
  end
end
