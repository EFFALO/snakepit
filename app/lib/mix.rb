class Mix

  def initialize
    # taters and jam
  end

  def perform
    @sox = Sox::Cmd.new()
    @sox.add_input("public/bellsr.wav")
    @sox.add_input("public/frogsr.wav")
    @sox.set_output("public/out1.wav")
    @sox.set_effects(splice: "-q 21,6")
    @sox.run

    @sox = Sox::Cmd.new()
    @sox.add_input("public/out1.wav")
    @sox.add_input("public/bellsr.wav")
    @sox.set_output("public/out2.wav")
    @sox.set_effects(splice: "-q 14,6")
    @sox.run

    @sox = Sox::Cmd.new()
    @sox.add_input("public/out2.wav")
    @sox.add_input("public/808r.wav")
    @sox.set_output("out3.wav")
    @sox.set_effects(splice: "-q 12,6", pitch: 0.69)
    @sox.run

    # @sox = Sox::Cmd.new()
    # @sox.add_input("public/808r.wav")
    # @sox.set_output("public/808rloop.wav")
    # @sox.set_effects(repeat: 2)
    # @sox.run
    #
    # @sox = Sox::Cmd.new()
    # @sox.add_input("public/808rloop.wav")
    # @sox.set_output("public/808rloops.wav")
    # @sox.set_effects(speed: "0.85")
    # @sox.run
    #
    # @sox = Sox::Cmd.new()
    # @sox.add_input("public/out1.wav")
    # @sox.add_input("public/808rloops.wav")
    # @sox.set_output("out3.wav")
    # @sox.set_effects(splice: "-q 24,12")
    # @sox.run
  end

end
