java_import com.yahoo.platform.yui.compressor.JavaScriptCompressor
java_import java.io.FileReader

module JMinify

  class JS
    def initialize(path)
      @reader = FileReader.new(path)
      @compressor = JavaScriptCompressor.new(@reader, Error.new)
    end

    def compress(out)
      @compressor.compress(out, -1, true, false, true, false)
    end
  end

end
