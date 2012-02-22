java_import com.yahoo.platform.yui.compressor.CssCompressor
java_import java.io.FileReader

module JMinify

  class CSS
    def initialize(path)
      @reader = FileReader.new(path)
      @compressor = CssCompressor.new(@reader)
      @reader.close
    end

    def compress(out)
      @compressor.compress(out, -1)
    end
  end

end
