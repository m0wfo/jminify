java_import com.yahoo.platform.yui.compressor.JavaScriptCompressor

require 'error'

module JMinify

  class JS

    def initialize(path)
      reader = java.io.FileReader.new(path)
      @compressor = JavaScriptCompressor.new(reader, Error.new)
    end

    def compress(out)
      writer = java.io.FileWriter.new(out)
      @compressor.compress(writer, -1, true, false, true, false)
      writer.close
    end
  end

end
