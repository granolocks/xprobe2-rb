module Xprobe2
  class Base
    def initialize(options={})
      # TODO: validation options
    end

    def scan
      Xprobe2::Program.my_run(options)
    end
  end
end
